//
//  DiscoverServicesScreenView.swift
//  Agenda Jet
//
//  Created by Rafaella Rodrigues Santos on 02/04/24.
//

import UIKit

class DiscoverServicesScreenView: UIView {
    
    lazy var searchBarServices: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        searchBar.placeholder = "Pesquisar"
        return searchBar
    }()
    
    lazy var tableView:UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.delaysContentTouches = false
        tableView.isScrollEnabled = true
        tableView.register(ServicesTableViewCell.self, forCellReuseIdentifier: "cell")
        return tableView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addsubviews()
        self.configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configConstraints(){
        NSLayoutConstraint.activate([
            
            self.searchBarServices.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 24),
            self.searchBarServices.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 20),
            self.searchBarServices.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            self.searchBarServices.heightAnchor.constraint(equalTo: searchBarServices.widthAnchor, multiplier: 0.11),
            
            self.tableView.topAnchor.constraint(equalTo: searchBarServices.bottomAnchor, constant: 8),
            self.tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            self.tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            self.tableView.bottomAnchor.constraint(equalTo:bottomAnchor),
           
        ])
            }
            
            func addsubviews() {
                self.addSubview(self.searchBarServices)
                self.addSubview(self.tableView)
            }
}



#Preview(""){
    DiscoverServicesScreenView()
}
