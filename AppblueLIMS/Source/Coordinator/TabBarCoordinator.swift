//
//  TabBarCoordinator.swift
//  AppblueLIMS
//
//  Created by IFB BIOTIC 11 on 01/12/22.
//

import Foundation
import UIKit

class TabBarCoordinator: Coordinator {
    
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let tabbarController = TabBarController()
        
        let homeViewCoordinator = HomeCoordinator(navigationController: self.navigationController)
        let cadastrarViewCoordinator = CadastrarCoordinator(navigationController: self.navigationController)
        let sobreViewCoordinator = SobreCoordinator(navigationController: self.navigationController)
        
        tabbarController.setViewControllers([homeViewCoordinator.homeViewController, cadastrarViewCoordinator.cadastrarViewController, sobreViewCoordinator.sobreViewController], animated: true)
        
        self.navigationController.pushViewController(tabbarController, animated: true)
    }
    
}


