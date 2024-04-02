//
//  ViewController.swift
//  Agenda Jet
//
//  Created by Rafaella Rodrigues Santos on 01/04/24.
//

import UIKit

class HomeViewController: UIViewController {
    
    var screen: HomeScreenView?
    
    override func loadView() {
        self.screen = HomeScreenView()
       
        self.view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
    }

   


}

