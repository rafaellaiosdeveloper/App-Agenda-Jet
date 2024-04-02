//
//  RedButton.swift
//  Agenda Jet
//
//  Created by Rafaella Rodrigues Santos on 01/04/24.
//

import UIKit

class RedButton: UIButton{
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupButton(title:  String) {
       self.setTitle(title, for: .normal)
        self.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        self.setTitleColor(.white, for: .normal)
        self.backgroundColor = UIColor(named: "redDefault")
        self.layer.cornerRadius = 12
        self.isEnabled = true
    }
}
