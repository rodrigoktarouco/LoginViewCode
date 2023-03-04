//
//  RegisterViewController.swift
//  LoginViewCode
//
//  Created by Rodrigo Kroef Tarouco on 03/03/23.
//

import UIKit

class RegisterViewController: UIViewController {

    var resgisterScreen: RegisterScreen?

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func loadView() {
        self.resgisterScreen = RegisterScreen()
        self.view = self.resgisterScreen
    }

}
