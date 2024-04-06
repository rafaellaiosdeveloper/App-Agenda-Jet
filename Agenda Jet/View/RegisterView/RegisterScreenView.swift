//
//  RegisterViewScreen.swift
//  Agenda Jet
//
//  Created by Rafaella Rodrigues Santos on 02/04/24.
//

import UIKit

class RegisterScreenView: UIView{
    
    lazy var logojetImage: LogoJetImage = {
        let image = LogoJetImage(frame: .zero)
        image.translatesAutoresizingMaskIntoConstraints = false
        image.setupImage()
        return image
    }()
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "CRIE SUA CONTA"
        label.font = .boldSystemFont(ofSize: 14)
        return label
    }()
    
    lazy var nameTextField: TextfieldWithImage = {
        let textField = TextfieldWithImage()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.setupTextfield(image: UIImage(named: "name")!, placeholder: " NOME")
        return textField
    }()
    
    lazy var emailTextField: TextfieldWithImage = {
        let textField = TextfieldWithImage()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.setupTextfield(image: UIImage(named: "email")!, placeholder: " E-MAIL")
        textField.autocapitalizationType = .none
        textField.keyboardType = .emailAddress
        return textField
    }()
    
    lazy var phoneTextField: TextfieldWithImage = {
        let textField = TextfieldWithImage()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.setupTextfield(image: UIImage(named: "phone")!, placeholder: " TELEFONE")
        textField.keyboardType = .numberPad
        return textField
    }()
    
    lazy var passwordTextField: TextfieldWithImage = {
        let textField = TextfieldWithImage()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.setupTextfield(image: UIImage(named: "senha")!, placeholder: " SENHA")
        textField.isSecureTextEntry = true
        return textField
    }()
    
    lazy var confirmPasswordTextField: TextfieldWithImage = {
        let textField = TextfieldWithImage()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.setupTextfield(image: UIImage(named: "senha")!, placeholder: " CONFIRME SUA SENHA")
        textField.isSecureTextEntry = true
        return textField
    }()
    
    lazy var registerButton:RedButton = {
        let button = RedButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(self.tappedButton(sender:)), for: .touchUpInside)
        button.setupButton(title: "Cadastrar")
        return button
    }()
    
    @objc func tappedButton(sender:UIButton){
        print("action disparada")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addsubviews()
        self.configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configConstraints(){
        NSLayoutConstraint.activate([
            self.logojetImage.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 110),
            self.logojetImage.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 93),
            self.logojetImage.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -93),
            self.logojetImage.heightAnchor.constraint(equalTo: logojetImage.widthAnchor),
            
            self.titleLabel.topAnchor.constraint(equalTo: self.logojetImage.bottomAnchor, constant: 30),
            self.titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 130),
            self.titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -130),
            self.titleLabel.heightAnchor.constraint(equalTo: titleLabel.widthAnchor, multiplier: 0.18),
            
            self.nameTextField.topAnchor.constraint(equalTo: self.titleLabel.bottomAnchor, constant: 25),
            self.nameTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 30),
            self.nameTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
            self.nameTextField.heightAnchor.constraint(equalTo: nameTextField.widthAnchor, multiplier: 0.10),
            
            self.emailTextField.topAnchor.constraint(equalTo: self.nameTextField.bottomAnchor, constant: 9),
            self.emailTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 30),
            self.emailTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
            self.emailTextField.heightAnchor.constraint(equalTo: emailTextField.widthAnchor, multiplier: 0.10),
            
            self.phoneTextField.topAnchor.constraint(equalTo: self.emailTextField.bottomAnchor, constant: 9),
            self.phoneTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 30),
            self.phoneTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
            self.phoneTextField.heightAnchor.constraint(equalTo: phoneTextField.widthAnchor, multiplier: 0.10),
            
            self.passwordTextField.topAnchor.constraint(equalTo: self.phoneTextField.bottomAnchor, constant: 9),
            self.passwordTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 30),
            self.passwordTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
            self.passwordTextField.heightAnchor.constraint(equalTo: passwordTextField.widthAnchor, multiplier: 0.10),
            
            self.confirmPasswordTextField.topAnchor.constraint(equalTo: self.passwordTextField.bottomAnchor, constant: 9),
            self.confirmPasswordTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 30),
            self.confirmPasswordTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
            self.confirmPasswordTextField.heightAnchor.constraint(equalTo: confirmPasswordTextField.widthAnchor, multiplier: 0.10),
            
            self.registerButton.topAnchor.constraint(equalTo: self.confirmPasswordTextField.bottomAnchor, constant: 65),
            self.registerButton.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 25),
            self.registerButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25),
            self.registerButton.heightAnchor.constraint(equalTo: registerButton.widthAnchor, multiplier: 0.15),
           
        ])
            }
            
            func addsubviews() {
                self.addSubview(self.logojetImage)
                self.addSubview(self.titleLabel)
                self.addSubview(self.nameTextField)
                self.addSubview(self.emailTextField)
                self.addSubview(self.phoneTextField)
                self.addSubview(self.passwordTextField)
                self.addSubview(self.confirmPasswordTextField)
                self.addSubview(self.registerButton)
            }
}

#Preview(""){
    RegisterScreenView()
}
