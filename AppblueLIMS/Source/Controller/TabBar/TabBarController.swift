//
//  TabBarViewController.swift
//  AppblueLIMS
//
//  Created by IFB BIOTIC 11 on 01/12/22.
//

import Foundation
import UIKit

class TabBarController: UITabBarController {
    
    override func setViewControllers(_ viewControllers: [UIViewController]?, animated: Bool) {
        super.setViewControllers(viewControllers, animated: true)
        self.tabBar.tintColor = .buttonBackGroundColor
        self.tabBar.isTranslucent = true
        UITabBar.appearance().barTintColor = .viewBackGroundColor
    }
}


