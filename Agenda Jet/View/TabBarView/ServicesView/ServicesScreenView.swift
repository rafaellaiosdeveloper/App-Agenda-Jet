//
//  ServicesScreenView.swift
//  Agenda Jet
//
//  Created by Rafaella Rodrigues Santos on 03/04/24.
//

import UIKit

class ServicesScreenView: UIView{
    
    let data = ServicesModel()
    
    lazy var searchBarServices: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        searchBar.placeholder = "Pesquisar"
        return searchBar
    }()
    
    lazy var tableView:UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.isScrollEnabled = true
        tableView.delegate = self
        tableView.dataSource = self
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
            
            self.searchBarServices.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 10),
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

extension ServicesScreenView: UITableViewDelegate, UITableViewDataSource{
  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ServicesTableViewCell
        let item = data.list[indexPath.row]
        cell.titleLabel.text = item.title
        cell.descriptionLabel.text = item.description
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 80
        }
}
