//
//  TomatoTimerColor.swift
//  TomatoTimer
//
//  Created by Adam Yoneda on 2023/02/13.
//

import Foundation
import UIKit

class TomatoTimerColor {
    // TabBarとNavBarの背景色 80%のTomato
    class var barBackgroundColor: UIColor {
        return UIColor(named: "BarBackgroundColor")!
    }
    
    // ボタンの色 100% Tomato
    class var tomatoButtonColor: UIColor {
        return UIColor(hex: "FF6347")!
    }
    
    // ProgressBarの色 100% 緑
    class var progressBarColor: UIColor {
        return UIColor(hex: "08BB4B")!
    }
    
    // ボタンの色 70% 緑
    class var greenButtonColor: UIColor {
        return UIColor(hex: "53D081")!
    }
    
}
