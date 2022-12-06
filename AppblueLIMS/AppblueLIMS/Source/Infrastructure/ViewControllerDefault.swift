//
//  ViewControllerDefault.swift
//  AppblueLIMS
//
//  Created by IFB BIOTIC 11 on 29/11/22.
//

import Foundation
import UIKit

class ViewControllerDefault: ViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        //titulo superior fica maior
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        //teclado desaparece clicando em qualquer lugar da tela
        self.navigationItem.setHidesBackButton(true, animated: false)
        
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.hideKeyBoardByTappingSide))
        
        self.view.addGestureRecognizer(tap)
    }
    
    @objc
    
    func hideKeyBoardByTappingSide(){
        self.view.endEditing(true)
    }
}
