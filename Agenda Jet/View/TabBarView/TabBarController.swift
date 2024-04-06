//
//  TabBarController.swift
//  Agenda Jet
//
//  Created by Rafaella Rodrigues Santos on 03/04/24.
//

import UIKit

class TabBarController: UITabBarController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        setupTabBarController()
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        navigationController?.navigationBar.isHidden = true
    }

    private func setupTabBarController() {
        let servicesScreen = UINavigationController(rootViewController: ServicesViewController())
        let cartScreen = UINavigationController(rootViewController: CartViewController())
        let scheduleScreen = UINavigationController(rootViewController: ScheduleViewController())
        let profileScreen = UINavigationController(rootViewController: ProfileViewController())
        self.setViewControllers([servicesScreen,cartScreen, scheduleScreen, profileScreen], animated: false)
        self.tabBar.backgroundColor = .systemGroupedBackground
        self.tabBar.isTranslucent = false
        setupBarItems()
        
        
        
    }
    private func setupBarItems(){
        guard let items = tabBar.items else {return}
        items[0].title = "Serviços"
        items[0].image = UIImage(named: "services")
        items[0].selectedImage = UIImage(named: "selectedServices")?.withRenderingMode(.alwaysOriginal)
        items[0].setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.redDefault], for: .selected)
        
        items[1].title = "Carrinho"
        items[1].image = UIImage(named: "cart")
        items[1].selectedImage = UIImage(named: "selectedCart")?.withRenderingMode(.alwaysOriginal)
        items[1].setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.redDefault], for: .selected)
        
        items[2].title = "Agendamentos"
        items[2].image = UIImage(named: "schedule")
        items[2].selectedImage = UIImage(named: "selectedSchedule")?.withRenderingMode(.alwaysOriginal)
        items[2].setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.redDefault], for: .selected)
        
        items[3].title = "Perfil"
        items[3].image = UIImage(named: "profile")
        items[3].selectedImage = UIImage(named: "selectedProfile")?.withRenderingMode(.alwaysOriginal)
        items[3].setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.redDefault], for: .selected)
    }
    

}
