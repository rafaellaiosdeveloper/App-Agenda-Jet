//
//  PlaceholderWithImage.swift
//  Agenda Jet
//
//  Created by Rafaella Rodrigues Santos on 02/04/24.
//

import UIKit

class TextfieldWithImage: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupTextfield(image: UIImage, placeholder: String){
        self.placeholder = placeholder
        self.backgroundColor = .systemGroupedBackground
        
        // Adicionando um ícone antes do espaço reservado
            let imageView = UIImageView(image: image)
            imageView.contentMode = .center
            imageView.frame = CGRect(x: 0, y: 0, width: 30, height: 15)
            self.leftView = imageView
            self.leftViewMode = .always
    }
}
