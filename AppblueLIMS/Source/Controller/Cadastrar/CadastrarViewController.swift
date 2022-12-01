//
//  CadastradosViewController.swift
//  AppblueLIMS
//
//  Created by IFB BIOTIC 11 on 01/12/22.
//

import Foundation
import UIKit

class CadastrarViewController: ViewControllerDefault {
    //MARK: - Clouseres
    
    lazy var cadastrarView: CadastrarView = {
       let cadastrarView = CadastrarView()
        
        return cadastrarView
    }()
    
    override func loadView() {
        self.view = cadastrarView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Cadastrar"
        
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
}

