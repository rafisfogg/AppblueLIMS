//
//  RegisterCoordinator.swift
//  AppblueLIMS
//
//  Created by IFB BIOTIC 11 on 22/11/22.
//

import Foundation
import UIKit

class RegisterCoordinator: Coordinator  {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = RegisterViewController()
        self.navigationController.pushViewController(viewController, animated: true)
        
        viewController.onLoginTap = {
            self.gotoLogin()
        }
    }
    
    func gotoLogin() {
        self.navigationController.popViewController(animated: true)
    }
}
