//
//  CustomTableViewCell.swift
//  Agenda Jet
//
//  Created by Rafaella Rodrigues Santos on 02/04/24.
//

import UIKit

class ServicesTableViewCell: UITableViewCell {
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 14)
        return label
    }()
    
    lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 12)
        label.numberOfLines = 2
        return label
    }()
    
    lazy var detailsButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Ver Detalhes...", for: .normal)
        button.isEnabled = true
        button.setTitleColor(.redDefault, for: .normal)
        button.addTarget(self, action: #selector(self.tappedButton(sender:)), for: .touchUpInside)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        return button
    }()
    
    @objc func tappedButton(sender:UIButton){
        print("action disparada")
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.contentView.isUserInteractionEnabled = true
        addsubviews()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configConstraints(){
        NSLayoutConstraint.activate([
                        titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
                        titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
                        titleLabel.trailingAnchor.constraint(equalTo: detailsButton.leadingAnchor, constant: -10),
                        
                        descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 5),
                        descriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
                        descriptionLabel.trailingAnchor.constraint(equalTo: detailsButton.leadingAnchor, constant: -10),
                        
                        detailsButton.centerYAnchor.constraint(equalTo: centerYAnchor),
                        detailsButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
                        detailsButton.widthAnchor.constraint(equalToConstant: 100),
                        detailsButton.heightAnchor.constraint(equalToConstant: 3)
           
        ])
        
        selectionStyle = .none
            }
    
    func addsubviews(){
        addSubview(titleLabel)
        addSubview(descriptionLabel)
        addSubview(detailsButton)
    }
}
#Preview(""){
    ServicesTableViewCell()
}
