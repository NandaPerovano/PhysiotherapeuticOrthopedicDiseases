//
//  ViewController.swift
//  PhysiotherapeuticOrthopedicDiseases
//
//  Created by Fernanda Perovano on 15/08/23.
//

import UIKit

class LoginVC: UIViewController {

    var loginScreen: LoginScreen?
    
    override func loadView() {
        self.loginScreen = LoginScreen()
        self.view = self.loginScreen
    }
}

