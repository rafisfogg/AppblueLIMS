//
//  LoginView.swift
//  AppblueLIMS
//
//  Created by IFB BIOTIC 11 on 22/11/22.
//

import Foundation
import UIKit

class LoginView: ViewDefault {

    // MARK: - Clouseres
    var onRegisterTap: (() -> Void)?
    var onLoginTap: (() -> Void)?
    
    // MARK: - Properties
    var imageLogin = ImageDefault(image: "ImageLogin")
    
    var imageLabel = LabelDefault (text: "Inovando a organização laboratorial.", font: UIFont.systemFont(ofSize: 15, weight: .regular))
    
    var emailTextField = TextFieldDefault (placeholder: "Usuário", keyBoardType: .emailAddress, returnKeyType: .next)
                                  
    var senhaTextField: TextFieldDefault = {
        let text = TextFieldDefault (placeholder: "Senha", keyBoardType: .emailAddress, returnKeyType: .done)
        
        text.isSecureTextEntry = true
        
        return text
    }()
    
    var buttonLogin = ButtonDefault (botao: "LOGIN")
    
    var buttonRegistrar = ButtonDefault (botao: "REGISTRAR")
    
    override func setupVisualElements() {
        
        super.setupVisualElements()
        emailTextField.delegate = self
        senhaTextField.delegate = self
        
        
        self.addSubview(imageLogin)
        self.addSubview(imageLabel)
        self.addSubview(emailTextField)
        self.addSubview(senhaTextField)
        self.addSubview(buttonLogin)
        self.addSubview(buttonRegistrar)
        
        buttonRegistrar.addTarget(self, action: #selector(registerTap), for: .touchUpInside)
        
        buttonLogin.addTarget(self, action: #selector(loginTap), for: .touchUpInside)
        
        
        NSLayoutConstraint.activate([
        
            imageLogin.widthAnchor.constraint(equalToConstant: 266),
            imageLogin.heightAnchor.constraint(equalToConstant: 83),
            imageLogin.topAnchor.constraint(equalTo: self.topAnchor, constant: 259),
            imageLogin.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 62),
            imageLogin.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -62),
            
            imageLabel.widthAnchor.constraint(equalToConstant: 100),
            imageLabel.topAnchor.constraint(equalTo: imageLogin.bottomAnchor, constant: 5),
            imageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 62),
            imageLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -62),
            
            emailTextField.widthAnchor.constraint(equalToConstant: 374),
            emailTextField.heightAnchor.constraint(equalToConstant: 60),
            emailTextField.topAnchor.constraint(equalTo: imageLabel.bottomAnchor, constant: 70),
            emailTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            emailTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            senhaTextField.widthAnchor.constraint(equalToConstant: 374),
            senhaTextField.heightAnchor.constraint(equalToConstant: 60),
            senhaTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 15),
            senhaTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            senhaTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            buttonLogin.widthAnchor.constraint(equalToConstant: 374),
            buttonLogin.heightAnchor.constraint(equalToConstant: 60),
            buttonLogin.topAnchor.constraint(equalTo: senhaTextField.bottomAnchor, constant: 15),
            buttonLogin.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            buttonLogin.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            buttonRegistrar.widthAnchor.constraint(equalToConstant: 374),
            buttonRegistrar.heightAnchor.constraint(equalToConstant: 60),
            buttonRegistrar.topAnchor.constraint(equalTo: buttonLogin.bottomAnchor, constant: 15),
            buttonRegistrar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            buttonRegistrar.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
        ])
        
    }
    
    //MARK: -Actions
    @objc
    private func registerTap(){
        onRegisterTap?()
    }
    
    @objc
    private func loginTap(){
        onLoginTap?()
    }
}

extension LoginView: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField == emailTextField {
            
            self.senhaTextField.becomeFirstResponder()
        }else {
            textField.resignFirstResponder()
        }
        
        return true
    }
}
