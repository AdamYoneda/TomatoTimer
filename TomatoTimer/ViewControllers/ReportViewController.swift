//
//  ReportViewController.swift
//  TomatoTimer
//
//  Created by Adam Yoneda on 2023/02/13.
//

import UIKit
import XLPagerTabStrip

class ReportViewController: ButtonBarPagerTabStripViewController {

    override func viewDidLoad() {
        // ----------XLPagerTabStrip ButtonBarViewの設定---------- //
        // 参照   https://qiita.com/KikurageChan/items/35593dc3aac8d694db8e
        settings.style.buttonBarBackgroundColor = UIColor.systemBackground
        settings.style.buttonBarItemBackgroundColor = TomatoTimerColor.tomatoButtonColor
        settings.style.buttonBarItemTitleColor = UIColor.white
        settings.style.selectedBarBackgroundColor = UIColor.gray
        settings.style.buttonBarMinimumLineSpacing = 0.5
        settings.style.buttonBarLeftContentInset = 0
        settings.style.buttonBarRightContentInset = 0
        settings.style.selectedBarHeight = 4.0
        
        super.viewDidLoad()
    }
    
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        let calendarVC = UIStoryboard(name: "Main", bundle: nil)
            .instantiateViewController(withIdentifier: "Calendar")
        let countdownVC = UIStoryboard(name: "Main", bundle: nil)
            .instantiateViewController(withIdentifier: "Count Down")
        let childVCs:[UIViewController] = [calendarVC, countdownVC]
        return childVCs
    }

    @IBAction func pressAddButton(_ sender: UIBarButtonItem) {
        let selectedViewController = self.viewControllers[currentIndex]
        if selectedViewController is CalendarViewController {
            let calendarModalVC = CalendarModalViewController()
            if let sheet = calendarModalVC.sheetPresentationController {
                sheet.detents = [.medium(), .large()]
                sheet.prefersGrabberVisible = true
                sheet.preferredCornerRadius = 40.0
            }
            present(calendarModalVC, animated: true, completion: nil)
        } else if selectedViewController is CountDownViewController {
            let countdownModalVC = CountDownModalViewController()
            if let sheet = countdownModalVC.sheetPresentationController {
                sheet.detents = [.medium(), .large()]
                sheet.prefersGrabberVisible = true
                sheet.preferredCornerRadius = 40.0
            }
            present(countdownModalVC, animated: true, completion: nil)
        }
        
    }
}
 
