//
//  HomeScreenView.swift
//  Agenda Jet
//
//  Created by Rafaella Rodrigues Santos on 01/04/24.
//

import UIKit

class HomeScreenView: UIView {
    
    lazy var logojetImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "JET")
        image.contentMode = .scaleAspectFill
        image.layer.cornerRadius = 45.0
        image.clipsToBounds = true
        return image
    }()
    
    lazy var logginButton:RedButton = {
        let button = RedButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(self.tappedButton(sender:)), for: .touchUpInside)
        button.setupButton(title: "Login")
        button.tag = 1
        return button
    }()
    
    lazy var registerButton:RedButton = {
        let button = RedButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(self.tappedButton(sender:)), for: .touchUpInside)
        button.setupButton(title: "Cadastro")
        button.tag = 2
        return button
    }()
    
    lazy var learnServiceButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Conheça nossos serviços...", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        button.setTitleColor(.redDefault, for: .normal)
        button.isEnabled = true
        button.addTarget(self, action: #selector(self.tappedButton(sender:)), for: .touchUpInside)
        button.tag = 3
        return button
    }()
    
    
    @objc func tappedButton(sender:UIButton){
        switch sender.tag {
        case 1:
            print("login")
        case 2:
            print("Cadastro")
        case 3:
            print("Conhecer serviços")
        default:
            print("action disparada")
        }
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
            self.logojetImage.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 120),
            self.logojetImage.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 93),
            self.logojetImage.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -93),
            self.logojetImage.heightAnchor.constraint(equalTo: logojetImage.widthAnchor),
           
            self.logginButton.topAnchor.constraint(equalTo: self.logojetImage.bottomAnchor, constant: 120),
            self.logginButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            self.logginButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25),
            self.logginButton.heightAnchor.constraint(equalTo: logginButton.widthAnchor, multiplier: 0.15),
            
            self.registerButton.topAnchor.constraint(equalTo: self.logginButton.bottomAnchor, constant: 35),
            self.registerButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            self.registerButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25),
            self.registerButton.heightAnchor.constraint(equalTo: logginButton.widthAnchor, multiplier: 0.15),
            
            self.learnServiceButton.topAnchor.constraint(equalTo: self.registerButton.bottomAnchor, constant: 70),
            self.learnServiceButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            self.learnServiceButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25),
            self.learnServiceButton.heightAnchor.constraint(equalTo: logginButton.widthAnchor, multiplier: 0.15),
        ])
    }

    func addsubviews() {
        self.addSubview(self.logojetImage)
        self.addSubview(self.logginButton)
        self.addSubview(self.registerButton)
        self.addSubview(self.learnServiceButton)
    }
}
