//
//  RegisterViewController.swift
//  LoginViewCode
//
//  Created by Rodrigo Kroef Tarouco on 03/03/23.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {

    var registerScreen: RegisterScreen?
    var auth: Auth?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.registerScreen?.configTextFieldDelegate(delegate: self)
        self.registerScreen?.delegate(delegate: self)
        self.auth = Auth.auth()

    }

    override func loadView() {
        self.registerScreen = RegisterScreen()
        self.view = self.registerScreen
    }

}

extension RegisterViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        self.registerScreen?.validateTextFields()
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

        let email: String = self.registerScreen?.emailTextField.text ?? ""
        let password: String = self.registerScreen?.passwordTextField.text ?? ""

        self.auth?.createUser(withEmail: email, password: password) { (result, error) in
            if error != nil {
                print("Error registering user!")
            } else {
                print("Success registering user!")
            }
        }
    }

}
