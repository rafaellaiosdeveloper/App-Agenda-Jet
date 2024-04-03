//
//  LogoJetImage.swift
//  Agenda Jet
//
//  Created by Rafaella Rodrigues Santos on 02/04/24.
//

import UIKit

class LogoJetImage: UIImageView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupImage() {
        self.image = UIImage(named: "JET")
        self.contentMode = .scaleAspectFill
        self.layer.cornerRadius = 45.0
        self.clipsToBounds = true
    }
    
    
}
