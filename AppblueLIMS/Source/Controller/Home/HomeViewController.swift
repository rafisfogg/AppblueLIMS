//
//  HomeViewController.swift
//  AppblueLIMS
//
//  Created by IFB BIOTIC 11 on 29/11/22.
//

import Foundation
import UIKit

class HomeViewController: ViewControllerDefault {
    //MARK: - Closures
    
    private lazy var homeView: HomeView = {
        let homeView = HomeView()
        
        return homeView
    }()
    
    override func loadView() {
        self.view = homeView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Cadastrados"
    }
}

