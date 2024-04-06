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
        screen?.delegate = self
    }

}

extension HomeViewController: HomeScreenViewDelegate{
    
    
    func didTapLoginButton1() {
        let loginViewController = LoginViewController()
        navigationController?.pushViewController(loginViewController, animated: true)
    }
    
    func didTapLoginButton2() {
        let registerViewController = RegisterViewController()
        navigationController?.pushViewController(registerViewController, animated: true)
    }
    
    func didTapLoginButton3() {
        let discoverServicesVC = DiscoverServicesViewController()
        navigationController?.pushViewController(discoverServicesVC, animated: true)
    }
    
    
}
