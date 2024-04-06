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
        self.view.backgroundColor = .white
    }
}

extension LoginViewController: LoginScreenViewDelegate {
    func didTapLoginButton() {
        let tabBarController = TabBarController()
        navigationController?.pushViewController(tabBarController, animated: true)
    }
    
    
}