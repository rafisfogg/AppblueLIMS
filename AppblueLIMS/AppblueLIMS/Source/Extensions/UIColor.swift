//
//  UIColor.swift
//  AppblueLIMS
//
//  Created by IFB BIOTIC 11 on 22/11/22.
//

import Foundation
import UIKit


extension UIColor {
    
    static var viewBackGroundColor: UIColor {
        UIColor(named: "viewBackGroundColor") ?? .white
    }
    
    static var textLabelColor: UIColor {
        UIColor(named: "textLabelColor") ?? .lightGray
    }
    
    static var buttonBackGroundColor: UIColor {
        UIColor(named: "buttonBackGroundColor") ?? .black
    }
    
    static var textFieldBackGroundColor: UIColor {
        UIColor(named: "textFieldBackGroundColor") ?? .black
    }
    
    static var placeHolderColor: UIColor {
        UIColor(named: "placeHolderColor") ?? .black
    }
}
