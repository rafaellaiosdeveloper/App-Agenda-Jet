//
//  RegisterViewController.swift
//  Agenda Jet
//
//  Created by Rafaella Rodrigues Santos on 02/04/24.
//

import UIKit

class RegisterViewController: UIViewController {
    
    var screen: RegisterScreenView?
    let backButton = CustomBackButton()
    
    override func loadView() {
        self.screen = RegisterScreenView()
        self.view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Cadastro"
        navigationItem.leftBarButtonItem = backButton
        view.backgroundColor = .white
        
    }
}
