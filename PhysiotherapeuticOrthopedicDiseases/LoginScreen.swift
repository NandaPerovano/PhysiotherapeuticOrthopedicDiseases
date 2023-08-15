//
//  LoginScreen.swift
//  PhysiotherapeuticOrthopedicDiseases
//
//  Created by Fernanda Perovano on 15/08/23.
//

import UIKit

class LoginScreen: UIView {

    lazy var subImageview: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "fundoVerde")
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addElements()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElements() {
        self.addSubview(self.subImageview)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
        
            subImageview.topAnchor.constraint(equalTo: topAnchor),
            subImageview.leadingAnchor.constraint(equalTo: leadingAnchor),
            subImageview.trailingAnchor.constraint(equalTo: trailingAnchor),
            subImageview.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}
