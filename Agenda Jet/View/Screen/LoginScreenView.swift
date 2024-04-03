//
//  LoginViewScreen.swift
//  Agenda Jet
//
//  Created by Rafaella Rodrigues Santos on 02/04/24.
//

import UIKit

class LoginScreenView: UIView{
    
    
    
    lazy var logojetImage: LogoJetImage = {
        let image = LogoJetImage(frame: .zero)
        image.translatesAutoresizingMaskIntoConstraints = false
        image.setupImage()
        return image
    }()
    
    lazy var emailTextField: TextfieldWithImage = {
        let textField = TextfieldWithImage()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.setupTextfield(image: UIImage(named: "email")!, placeholder: " E-MAIL")
        textField.autocapitalizationType = .none
        textField.keyboardType = .emailAddress
        return textField
    }()
    
    lazy var passwordTextField: TextfieldWithImage = {
        let textField = TextfieldWithImage()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.setupTextfield(image: UIImage(named: "senha")!, placeholder: " SENHA")
        textField.isSecureTextEntry = true
        return textField
    }()
    
    lazy var logginButton:RedButton = {
        let button = RedButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(self.tappedButton(sender:)), for: .touchUpInside)
        button.setupButton(title: "Login")
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
            
            self.emailTextField.topAnchor.constraint(equalTo: self.logojetImage.bottomAnchor, constant: 103),
            self.emailTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 30),
            self.emailTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
            self.emailTextField.heightAnchor.constraint(equalTo: emailTextField.widthAnchor, multiplier: 0.10),
            
            self.passwordTextField.topAnchor.constraint(equalTo: self.emailTextField.bottomAnchor, constant: 10),
            self.passwordTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 30),
            self.passwordTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
            self.passwordTextField.heightAnchor.constraint(equalTo: passwordTextField.widthAnchor, multiplier: 0.10),
            
            self.logginButton.topAnchor.constraint(equalTo: self.passwordTextField.bottomAnchor, constant: 100),
            self.logginButton.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 25),
            self.logginButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25),
            self.logginButton.heightAnchor.constraint(equalTo: logginButton.widthAnchor, multiplier: 0.15),
        ])
            }
            
            func addsubviews() {
                self.addSubview(self.logojetImage)
                self.addSubview(self.emailTextField)
                self.addSubview(self.passwordTextField)
                self.addSubview(self.logginButton)
            }
    
    
}



