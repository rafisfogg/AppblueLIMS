//
//  CadastradosCoordinator.swift
//  AppblueLIMS
//
//  Created by IFB BIOTIC 11 on 01/12/22.
//

import Foundation
import UIKit

class CadastrarCoordinator: Coordinator {
    
    private let navigationController: UINavigationController
    
    lazy var cadastrarViewController: CadastrarViewController = {
        let viewController = CadastrarViewController()
        
        viewController.tabBarItem.title = "Cadastrar"
        viewController.tabBarItem.image = UIImage(systemName: "highlighter")
        
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
