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
        self.resgisterScreen?.configTextFieldDelegate(delegate: self)
        self.resgisterScreen?.delegate(delegate: self)

    }

    override func loadView() {
        self.resgisterScreen = RegisterScreen()
        self.view = self.resgisterScreen
    }

}

extension RegisterViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        self.resgisterScreen?.validateTextFields()
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

extension RegisterViewController: RegisterScreenProtocol {

    func actionBackButton() {
        self.navigationController?.popViewController(animated: true)
    }

    func actionRegisterButton() {
        print("Register Button!")
    }

}
