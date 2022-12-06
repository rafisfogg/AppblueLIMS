//
//  CadastrarView.swift
//  AppblueLIMS
//
//  Created by IFB BIOTIC 11 on 01/12/22.
//

import Foundation
import UIKit

class CadastrarView: ViewDefault {
    //MARK: - Inits
    
    //MARK: - Closures
    var onCameraTap: (()-> Void)?
    
    //MARK: - Proporties
    lazy var imagem: UIImageView = {
        let view = UIImageView ()
        view.image = UIImage(named: "imagemCamera")
        
        let tapGR = UITapGestureRecognizer(target: self, action: #selector(cameraTap))
        view.addGestureRecognizer(tapGR)
        view.isUserInteractionEnabled = true
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var titleTextField = TextFieldDefault(placeholder: "Título", keyBoardType: .default, returnKeyType: .next)
    lazy var descriptionTextField = TextFieldDefault(placeholder: "Descrição", keyBoardType: .default, returnKeyType: .next)
    lazy var quantityTextField = TextFieldDefault(placeholder: "Quantidade", keyBoardType: .default, returnKeyType: .next)
    lazy var localizationTextField = TextFieldDefault(placeholder: "Local", keyBoardType: .default, returnKeyType: .next)
    lazy var statusTextField = TextFieldDefault(placeholder: "Status", keyBoardType: .default, returnKeyType: .done)
    
    lazy var saveButton = ButtonDefault(botao: "SALVAR")
    
    override func setupVisualElements() {
        self.addSubview(imagem)
        self.addSubview(titleTextField)
        self.addSubview(descriptionTextField)
        self.addSubview(quantityTextField)
        self.addSubview(localizationTextField)
        self.addSubview(statusTextField)
        self.addSubview(saveButton)
        
        
        NSLayoutConstraint.activate([
            imagem.heightAnchor.constraint(equalToConstant: 175),
            imagem.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 10),
            imagem.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            imagem.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
            
            titleTextField.widthAnchor.constraint(equalToConstant: 374),
            titleTextField.heightAnchor.constraint(equalToConstant: 60),
            titleTextField.topAnchor.constraint(equalTo: imagem.bottomAnchor, constant: 15),
            titleTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            titleTextField.trailingAnchor.constraint(equalTo: self.leadingAnchor, constant: -15),
            
            descriptionTextField.widthAnchor.constraint(equalToConstant: 374),
            descriptionTextField.heightAnchor.constraint(equalToConstant: 60),
            descriptionTextField.topAnchor.constraint(equalTo: titleTextField.bottomAnchor, constant: 05),
            descriptionTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            descriptionTextField.trailingAnchor.constraint(equalTo: self.leadingAnchor, constant: -15),
            
            quantityTextField.widthAnchor.constraint(equalToConstant: 374),
            quantityTextField.heightAnchor.constraint(equalToConstant: 60),
            quantityTextField.topAnchor.constraint(equalTo: descriptionTextField.bottomAnchor, constant: 05),
            quantityTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            quantityTextField.trailingAnchor.constraint(equalTo: self.leadingAnchor, constant: -15),
            
            localizationTextField.widthAnchor.constraint(equalToConstant: 374),
            localizationTextField.heightAnchor.constraint(equalToConstant: 60),
            localizationTextField.topAnchor.constraint(equalTo: quantityTextField.bottomAnchor, constant: 05),
            localizationTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            localizationTextField.trailingAnchor.constraint(equalTo: self.leadingAnchor, constant: -15),
            
            statusTextField.widthAnchor.constraint(equalToConstant: 374),
            statusTextField.heightAnchor.constraint(equalToConstant: 60),
            statusTextField.topAnchor.constraint(equalTo: localizationTextField.bottomAnchor, constant: 05),
            statusTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            statusTextField.trailingAnchor.constraint(equalTo: self.leadingAnchor, constant: -15),
            
//            saveButton.widthAnchor.constraint(equalToConstant: 374),
//            saveButton.heightAnchor.constraint(equalToConstant: 60),
//            saveButton.topAnchor.constraint(equalTo: statusTextField.bottomAnchor, constant: 05),
//            saveButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 14),
//            saveButton.trailingAnchor.constraint(equalTo: self.leadingAnchor, constant: -14),
            
            saveButton.widthAnchor.constraint(equalToConstant: 358),
            saveButton.heightAnchor.constraint(equalToConstant: 50),
            saveButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            saveButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 694),
            
            
        ])
    }
    @objc
    
    private func cameraTap() {
        self.onCameraTap?()
    }
    
    func setImage (image: UIImage){
        imagem.image = image
    }
    
}
