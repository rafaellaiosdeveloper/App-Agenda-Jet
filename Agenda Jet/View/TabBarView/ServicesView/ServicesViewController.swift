//
//  TelaServiços.swift
//  Agenda Jet
//
//  Created by Rafaella Rodrigues Santos on 03/04/24.
//

import UIKit

class ServicesViewController: UIViewController{
    
    var screen: ServicesScreenView?
    
    override func loadView() {
        self.screen = ServicesScreenView()
        self.view = screen
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       self.title = "Serviços"
        navigationItem.hidesBackButton = true
        view.backgroundColor = .white
    }
}


    
    

