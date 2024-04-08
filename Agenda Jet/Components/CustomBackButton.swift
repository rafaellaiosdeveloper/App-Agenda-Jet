//
//  CustomBackButton.swift
//  Agenda Jet
//
//  Created by Rafaella Rodrigues Santos on 02/04/24.
//

import UIKit

class CustomBackButton: UIBarButtonItem {
    
    override init() {
        super.init()
        setupButton()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupButton()
    }
    
    private func setupButton() {
        let backButtonImage = UIImage(named: "back")
        self.image = backButtonImage
        self.tintColor = .black
        self.style = .plain
    }
}

