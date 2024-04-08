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
    let list: [ServicesModel] = [
           ServicesModel(title: "Lavagem detalhada", description: "Serviço de detalhamento interno + externo incluso enceramento"),
           ServicesModel(title: "Lavagem de motor", description: "Lavagem de motor á vapor incluso aplicação de verniz no motor")
        ]
    
    override func loadView() {
        self.screen = DiscoverServicesScreenView()
        self.view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.tableView.delegate = self
        screen?.tableView.dataSource = self
        navigationItem.title = "Nossos serviços"
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

extension DiscoverServicesViewController: UITableViewDelegate, UITableViewDataSource{
  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ServicesTableViewCell
        let item = list[indexPath.row]
        cell.titleLabel.text = item.title
        cell.descriptionLabel.text = item.description
        cell.delegate = self
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 80
        }
}

extension DiscoverServicesViewController: DetailsButtonDelegate{
    func didTapDetailsButton() {
        let registerViewController = RegisterViewController()
        navigationController?.pushViewController(registerViewController, animated: true)
    }
    
    
}
