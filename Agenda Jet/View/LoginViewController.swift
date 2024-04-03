//
//  LoginViewController.swift
//  Agenda Jet
//
//  Created by Rafaella Rodrigues Santos on 02/04/24.
//

import UIKit

class LoginViewController: UIViewController {
    
    var screen: LoginViewScreen?
    
    override func loadView() {
        self.screen = LoginViewScreen()
        self.view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
    }
    

   

}
