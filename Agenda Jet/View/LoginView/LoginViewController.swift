//
//  LoginViewController.swift
//  Agenda Jet
//
//  Created by Rafaella Rodrigues Santos on 02/04/24.
//

import UIKit

class LoginViewController: UIViewController {
    
    var screen: LoginScreenView?
    let backButton = CustomBackButton()
    
    override func loadView() {
        self.screen = LoginScreenView()
        self.view = screen
        screen?.delegate = self
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Login"
        navigationItem.leftBarButtonItem = backButton
        setupBackButton()
        self.view.backgroundColor = .white
    }
    
    func setupBackButton(){
        backButton.target = self
        backButton.action = #selector(back)
    }
    
    @objc func back(){
        navigationController?.popViewController(animated: true)
    }
}

extension LoginViewController: LoginScreenViewDelegate {
    func didTapLoginButton() {
        let tabBarController = TabBarController()
        navigationController?.pushViewController(tabBarController, animated: true)
    }
    
    
}
