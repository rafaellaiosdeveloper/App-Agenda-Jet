//
//  RegisterViewController.swift
//  Agenda Jet
//
//  Created by Rafaella Rodrigues Santos on 02/04/24.
//

import UIKit

class RegisterViewController: UIViewController {
    
    var screen: RegisterViewScreen?
    
    override func loadView() {
        self.screen = RegisterViewScreen()
        self.view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
    }
    

    

}
