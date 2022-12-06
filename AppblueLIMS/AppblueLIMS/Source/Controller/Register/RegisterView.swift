//
//  RegisterView.swift
//  AppblueLIMS
//
//  Created by IFB BIOTIC 11 on 22/11/22.
//

import Foundation
import UIKit

class RegisterView: ViewDefault {

    //MARK: - Initialize
    var onLoginTap:(()-> Void)?
    
    //MARK: - Properties
    var imageLogin = ImageDefault(image: "ImageLogin")
    
    var imageLabel = LabelDefault (text: "Entre com seu e-mail e senha para registrar.", font: UIFont.systemFont(ofSize: 17, weight: .regular))
    
    var nomeTextField = TextFieldDefault (placeholder: "Nome completo", keyBoardType: .default, returnKeyType: .next)
    
    var emailTextField = TextFieldDefault (placeholder: "Email", keyBoardType: .emailAddress, returnKeyType: .next)
                                  
    var senhaTextField: TextFieldDefault = {
        let text = TextFieldDefault (placeholder: "Senha", keyBoardType: .emailAddress, returnKeyType: .next)
        
        text.isSecureTextEntry = true
        
        return text
    }()
    
    var confirmeSenhaTextField : TextFieldDefault = {
        let text = TextFieldDefault (placeholder: "Confirme sua senha", keyBoardType: .emailAddress, returnKeyType: .done)
        
        text.isSecureTextEntry = true
        
        return text
    }()
    
    var buttonLogin = ButtonDefault (botao: "LOGIN")
    
    var buttonRegistrar = ButtonDefault (botao: "REGISTRAR")
    
    override func setupVisualElements() {
        
        super.setupVisualElements()
        nomeTextField.delegate = self
        emailTextField.delegate = self
        senhaTextField.delegate = self
        confirmeSenhaTextField.delegate = self
        
        self.addSubview(imageLogin)
        self.addSubview(imageLabel)
        self.addSubview(nomeTextField)
        self.addSubview(emailTextField)
        self.addSubview(senhaTextField)
        self.addSubview(confirmeSenhaTextField)
        self.addSubview(buttonRegistrar)
        self.addSubview(buttonLogin)
        
        buttonLogin.addTarget(self, action: #selector(loginTap), for: .touchUpInside)
        
        
        NSLayoutConstraint.activate([
        
            imageLogin.widthAnchor.constraint(equalToConstant: 268),
            imageLogin.heightAnchor.constraint(equalToConstant: 83),
            imageLogin.topAnchor.constraint(equalTo: self.topAnchor, constant: 180),
            imageLogin.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 55),
            imageLogin.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -55),
            
            imageLabel.widthAnchor.constraint(equalToConstant: 100),
            imageLabel.topAnchor.constraint(equalTo: imageLogin.bottomAnchor, constant: 5),
            imageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 62),
            imageLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -62),
            
            nomeTextField.widthAnchor.constraint(equalToConstant: 374),
            nomeTextField.heightAnchor.constraint(equalToConstant: 60),
            nomeTextField.topAnchor.constraint(equalTo: imageLabel.bottomAnchor, constant: 40),
            nomeTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            nomeTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            emailTextField.widthAnchor.constraint(equalToConstant: 374),
            emailTextField.heightAnchor.constraint(equalToConstant: 60),
            emailTextField.topAnchor.constraint(equalTo: nomeTextField.bottomAnchor, constant: 15),
            emailTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            emailTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            senhaTextField.widthAnchor.constraint(equalToConstant: 374),
            senhaTextField.heightAnchor.constraint(equalToConstant: 60),
            senhaTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 15),
            senhaTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            senhaTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            confirmeSenhaTextField.widthAnchor.constraint(equalToConstant: 374),
            confirmeSenhaTextField.heightAnchor.constraint(equalToConstant: 60),
            confirmeSenhaTextField.topAnchor.constraint(equalTo: senhaTextField.bottomAnchor, constant: 15),
            confirmeSenhaTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            confirmeSenhaTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            buttonRegistrar.widthAnchor.constraint(equalToConstant: 374),
            buttonRegistrar.heightAnchor.constraint(equalToConstant: 60),
            buttonRegistrar.topAnchor.constraint(equalTo: confirmeSenhaTextField.bottomAnchor, constant: 15),
            buttonRegistrar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            buttonRegistrar.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            buttonLogin.widthAnchor.constraint(equalToConstant: 374),
            buttonLogin.heightAnchor.constraint(equalToConstant: 60),
            buttonLogin.topAnchor.constraint(equalTo: buttonRegistrar.bottomAnchor, constant: 15),
            buttonLogin.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            buttonLogin.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
        ])
        
    }
    
    //MARK: - Actions
    @objc
    private func loginTap() {
        onLoginTap?()
    }
}

extension RegisterView: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField == nomeTextField {
            
            self.emailTextField.becomeFirstResponder()
            
        }else if textField == emailTextField {
            self.senhaTextField.becomeFirstResponder()
        }else if textField == senhaTextField {
            self.confirmeSenhaTextField.becomeFirstResponder()
        } else {
            textField.resignFirstResponder()
        }
       return true
    }
}

