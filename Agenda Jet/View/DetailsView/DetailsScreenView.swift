//
//  DetailsScreenView.swift
//  Agenda Jet
//
//  Created by Rafaella Rodrigues Santos on 07/04/24.
//

import UIKit

class DetailsScreenView: UIView{
    
    let list = DetailsList()
    
    lazy var serviceImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = list.details.image
        image.contentMode = .scaleToFill
        return image
    }()
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = list.details.title
        label.font = .boldSystemFont(ofSize: 16)
        label.numberOfLines = 0
        return label
    }()
    
    lazy var descriptionTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = list.details.descriptionTitle
        label.font = .boldSystemFont(ofSize: 14)
        label.numberOfLines = 0
        return label
    }()
    
    lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = list.details.descriptionLabel
        label.font = .systemFont(ofSize: 14)
        label.numberOfLines = 0
        return label
    }()
    
    lazy var valueTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = list.details.valueTitle
        label.font = .boldSystemFont(ofSize: 14)
        label.numberOfLines = 0
        return label
    }()
    
    lazy var valueLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = list.details.valueLabel
        label.font = .systemFont(ofSize: 14)
        label.numberOfLines = 0
        return label
    }()
    
    lazy var durationTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = list.details.durationTitle
        label.textAlignment = .left
        label.font = .boldSystemFont(ofSize: 14)
        label.numberOfLines = 0
        return label
    }()
    
    lazy var durationLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = list.details.durationLable
        
        label.font = .systemFont(ofSize: 14)
        label.numberOfLines = 0
        return label
    }()
    
    lazy var scheduleButton:RedButton = {
        let button = RedButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(self.tappedButton(sender:)), for: .touchUpInside)
        button.setupButton(title: "Agendar")
        return button
    }()
    
    @objc func tappedButton(sender:UIButton){
       // delegate?.didTapLoginButton()
        print("action disparada")
    }
    
  
    override init(frame: CGRect) {
        super.init(frame: frame)
        addsubviews()
        configConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configConstraints(){
        NSLayoutConstraint.activate([
            self.serviceImage.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 11),
            self.serviceImage.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 25),
            self.serviceImage.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25),
            self.serviceImage.heightAnchor.constraint(equalTo: serviceImage.widthAnchor, multiplier: 0.63),
            
            self.titleLabel.topAnchor.constraint(equalTo: self.serviceImage.bottomAnchor, constant: 10),
            self.titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 105),
            self.titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -105),
            
            self.descriptionTitleLabel.topAnchor.constraint(equalTo: self.titleLabel.bottomAnchor, constant: 5),
            self.descriptionTitleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 25),
            self.descriptionTitleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25),
            
            self.descriptionLabel.topAnchor.constraint(equalTo: self.descriptionTitleLabel.bottomAnchor, constant: 0),
            self.descriptionLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 25),
            self.descriptionLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25),
            
            self.valueTitleLabel.topAnchor.constraint(equalTo: self.descriptionLabel.bottomAnchor, constant: 5),
            self.valueTitleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 25),
            self.valueTitleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25),
            
            self.valueLabel.topAnchor.constraint(equalTo: self.valueTitleLabel.bottomAnchor),
            self.valueLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 25),
            self.valueLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25),
            
            self.durationTitleLabel.topAnchor.constraint(equalTo: self.valueLabel.bottomAnchor, constant: 5),
            self.durationTitleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 25),
            self.durationTitleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25),
            
            self.durationLabel.topAnchor.constraint(equalTo: self.durationTitleLabel.bottomAnchor),
            self.durationLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 25),
            self.durationLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -218),
            
            self.scheduleButton.topAnchor.constraint(equalTo: self.durationLabel.bottomAnchor, constant: 30),
            self.scheduleButton.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 25),
            self.scheduleButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25),
            self.scheduleButton.heightAnchor.constraint(equalTo: scheduleButton.widthAnchor, multiplier: 0.15),
        ])
    }
    
    func addsubviews() {
        self.addSubview(self.serviceImage)
        self.addSubview(self.titleLabel)
        self.addSubview(self.descriptionTitleLabel)
        self.addSubview(self.descriptionLabel)
        self.addSubview(self.valueTitleLabel)
        self.addSubview(self.valueLabel)
        self.addSubview(self.durationTitleLabel)
        self.addSubview(self.durationLabel)
        self.addSubview(self.scheduleButton)
    }
    
}
#Preview(""){
    DetailsScreenView()
}
