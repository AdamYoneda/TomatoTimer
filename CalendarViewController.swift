//
//  CalendarViewController.swift
//  TomatoTimer
//
//  Created by Adam Yoneda on 2023/02/15.
//

import UIKit
import XLPagerTabStrip

class CalendarViewController: UIViewController, IndicatorInfoProvider {
    
    // ボタンのタイトル
    var itemInfo: IndicatorInfo = "Calendar"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = .cyan
    }
    
    func indicatorInfo(for pagerTabStripController: XLPagerTabStrip.PagerTabStripViewController) -> XLPagerTabStrip.IndicatorInfo {
        return itemInfo
    }

}
