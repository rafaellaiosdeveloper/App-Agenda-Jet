//
//  TelaServiços.swift
//  Agenda Jet
//
//  Created by Rafaella Rodrigues Santos on 03/04/24.
//

import UIKit

class ServicesViewController: UIViewController{
    
    var screen: ServicesScreenView?
    
    let list = ServicesList()
   
    override func loadView() {
        self.screen = ServicesScreenView()
        self.view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       self.title = "Serviços"
        screen?.tableView.delegate = self
        screen?.tableView.dataSource = self
        navigationItem.hidesBackButton = true
        view.backgroundColor = .white
    }
}

extension ServicesViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        list.services.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ServicesTableViewCell
        let item = list.services[indexPath.row]
        cell.titleLabel.text = item.title
        cell.descriptionLabel.text = item.description
        cell.delegate = self
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 80
        }
}

extension ServicesViewController: DetailsButtonDelegate{
    func didTapDetailsButton() {
        let detailsViewController = DetailsViewController()
        navigationController?.pushViewController(detailsViewController, animated: true)
    }
}


    
    

