//
//  TabBarViewController.swift
//  AppblueLIMS
//
//  Created by IFB BIOTIC 11 on 01/12/22.
//

import Foundation
import UIKit

class TabBarViewController: ViewControllerDefault {
    
    // MARK: - Clousures
    var onRegisterTap: (()-> Void)?
    var onLoginTap: (()-> Void)?
    
    lazy var tabBarView: LoginView = {
        let loginView = LoginView()
        loginView.onRegisterTap = {
            self.onRegisterTap?()
        }
        
        loginView.onLoginTap = {
            self.onLoginTap?()
        }
        
       return loginView
    }()
    
    override func loadView() {
        self.view = loginView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Login"
    }
    
}
