//
//  DetailsViewController.swift
//  Agenda Jet
//
//  Created by Rafaella Rodrigues Santos on 06/04/24.
//

import UIKit

class DetailsViewController: UITabBarController {

    var screen: DetailsScreenView?
    let backButton = CustomBackButton()
    
    override func loadView() {
        self.screen = DetailsScreenView()
      //  screen?.delegate = self
        self.view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .white
        self.title = "Detalhes do serviço"
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
