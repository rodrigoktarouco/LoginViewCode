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
    var alert: AlertManager?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.registerScreen?.configTextFieldDelegate(delegate: self)
        self.registerScreen?.delegate(delegate: self)
        self.auth = Auth.auth()
        self.alert = AlertManager(controller: self)

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
        guard let register = self.registerScreen else { return }

        self.auth?.createUser(withEmail: register.getEmail(), password: register.getPassword()) { (result, error) in
            if error != nil {
                self.alert?.getAlert(title: "Attention", message: "Error registering user!")
            } else {
                self.alert?.getAlert(title: "Attention", message: "Success registering user!", completion: {
                    self.navigationController?.popViewController(animated: true)
                })
            }
        }
    }
}
