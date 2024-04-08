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
        screen?.delegate = self
        self.view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Cadastro"
        navigationItem.leftBarButtonItem = backButton
        setupBackButton()
        view.backgroundColor = .white
    }
    
    func setupBackButton(){
        backButton.target = self
        backButton.action = #selector(back)
    }
    
    @objc func back(){
        navigationController?.popViewController(animated: true)
    }
}
    
    extension RegisterViewController: RegisterScreenViewDelegate {
        func didTapRegisterButton() {
            let tabBarController = TabBarController()
            navigationController?.pushViewController(tabBarController, animated: true)
        }
    }

