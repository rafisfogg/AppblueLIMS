//
//  SobreViewController.swift
//  AppblueLIMS
//
//  Created by IFB BIOTIC 11 on 01/12/22.
//

import Foundation
import UIKit

class SobreViewController: ViewControllerDefault {
    //MARK: - Clouseres
    
    lazy var sobreView: SobreView = {
       let sobreView = SobreView()
        
        return sobreView
    }()
    
    override func loadView() {
        self.view = sobreView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Sobre"
        
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
}


