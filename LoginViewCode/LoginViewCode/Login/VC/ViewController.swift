//
//  ViewController.swift
//  LoginViewCode
//
//  Created by Rodrigo Kroef Tarouco on 24/02/23.
//

import UIKit

class ViewController: UIViewController {

    var loginScreen: LoginScreen?

    override func loadView() {
        self.loginScreen = LoginScreen()
        self.view = self.loginScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.loginScreen?.delegate(delegate: self)
        self.loginScreen?.configTextFieldDelegate(delegate: self)
    }

    

    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }

}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("TextFieldShouldReturn")
        textField.resignFirstResponder()
        return true
    }

    func textFieldDidEndEditing(_ textField: UITextField) {
        print("TextFieldDidENt")
    }

    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("TextFieldBeginEditing")
    }
}

extension ViewController: LoginScreenProtocol {
    func actionLoginButton() {
        print("Login button success")
    }

    func actionRegisterButton() {
        print("Register button success")
    }

}

