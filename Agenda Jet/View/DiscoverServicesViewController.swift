//
//  DiscoverServicesViewController.swift
//  Agenda Jet
//
//  Created by Rafaella Rodrigues Santos on 02/04/24.
//

import UIKit

class DiscoverServicesViewController: UIViewController {
    
    var screen: DiscoverServicesScreenView?
    let backButton = CustomBackButton()
    
    override func loadView() {
        self.screen = DiscoverServicesScreenView()
        self.view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Nossos serviços"
        navigationItem.leftBarButtonItem = backButton
        view.backgroundColor = .white
    }
    

}
