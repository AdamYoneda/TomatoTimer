//
//  CountDownViewController.swift
//  TomatoTimer
//
//  Created by Adam Yoneda on 2023/02/15.
//

import UIKit
import XLPagerTabStrip

class CountDownViewController: UIViewController, IndicatorInfoProvider {
    
    var itemInfo: IndicatorInfo = "Count Down"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = .darkGray
    }
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return itemInfo
    }

}
