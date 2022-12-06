//
//  TextFieldDefault.swift
//  AppblueLIMS
//
//  Created by IFB BIOTIC 11 on 22/11/22.
//

import Foundation
import UIKit

class TextFieldDefault: UITextField {
    
    //construtor recebendo apenas placeholder
    init(placeholder: String) {
        super.init(frame: .zero)
        initDefault(placeholder: placeholder, keyBoardType: .default, returnKeyType: .default)
    }
    //construtor recebendo apenas placeholder
    init(placeholder: String, keyBoardType: UIKeyboardType, returnKeyType: UIReturnKeyType) {
        super.init(frame: .zero)
        initDefault(placeholder: placeholder, keyBoardType: keyBoardType, returnKeyType: returnKeyType)
    }
    
    private func initDefault(placeholder: String, keyBoardType: UIKeyboardType, returnKeyType: UIReturnKeyType) {
        self.backgroundColor = .textFieldBackGroundColor
        self.placeholder = placeholder
        self.keyboardType = keyBoardType
        self.returnKeyType = returnKeyType
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}



