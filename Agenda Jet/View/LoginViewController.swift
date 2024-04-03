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
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Login"
        navigationItem.leftBarButtonItem = backButton
        self.view.backgroundColor = .white
    }
}
