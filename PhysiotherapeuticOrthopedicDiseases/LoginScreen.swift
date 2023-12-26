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
    
    lazy var logoAppImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "simbolo")
        image.clipsToBounds = true
        image.layer.cornerRadius = 12
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
        self.addSubview(self.logoAppImageView)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
        
            subImageview.topAnchor.constraint(equalTo: topAnchor),
            subImageview.leadingAnchor.constraint(equalTo: leadingAnchor),
            subImageview.trailingAnchor.constraint(equalTo: trailingAnchor),
            subImageview.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            logoAppImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 55),
            logoAppImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            logoAppImageView.heightAnchor.constraint(equalToConstant: 108),
            logoAppImageView.widthAnchor.constraint(equalToConstant: 108)
        ])
    }
}
