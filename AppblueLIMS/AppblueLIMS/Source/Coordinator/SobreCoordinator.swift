//
//  SobreCoordinator.swift
//  AppblueLIMS
//
//  Created by IFB BIOTIC 11 on 01/12/22.
//

import Foundation
import UIKit

class SobreCoordinator: Coordinator {
    
    private let navigationController: UINavigationController
    
    lazy var sobreViewController: SobreViewController = {
        let viewController = SobreViewController()
        
        viewController.tabBarItem.title = "Sobre"
        viewController.tabBarItem.image = UIImage(systemName: "info.square")
        return viewController
    }()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        //let viewController = HomeViewController()
        //self.navigationController.pushViewController(viewController, animated: true)
    }
}
