//
//  ViewController.swift
//  LoginViewCode
//
//  Created by Rodrigo Kroef Tarouco on 24/02/23.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    var auth: Auth?
    var loginScreen: LoginScreen?
    var alert: AlertManager?

    override func loadView() {
        self.loginScreen = LoginScreen()
        self.view = self.loginScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        var auth = Auth.auth()
        self.loginScreen?.delegate(delegate: self)
        self.loginScreen?.configTextFieldDelegate(delegate: self)
        self.alert = AlertManager(controller: self)
    }

    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }

    

}

extension LoginViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("TextFieldShouldReturn")
        textField.resignFirstResponder()
        return true
    }

    func textFieldDidEndEditing(_ textField: UITextField) {
        print("TextFieldDidENt")
        self.loginScreen?.validateTextFields()
    }

    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("TextFieldBeginEditing")
    }
}

extension LoginViewController: LoginScreenProtocol {
    func actionLoginButton() {
        let vc: HomeViewController = HomeViewController()
        self.navigationController?.pushViewController(vc, animated: true)
//        guard let login = self.loginScreen else { return }
//
//        self.auth?.signIn(withEmail: login.getEmail(), password: login.getPassword()) { user, error in
//            if error != nil {
//                self.alert?.getAlert(title: "Attention", message: "Incorrect credentials, try again!")
//            } else {
//                if user == nil {
//                    self.alert?.getAlert(title: "Attention", message: "We had an inexpected problem, try again later!")
//                } else {
//                    self.alert?.getAlert(title: "Attention", message: "User logged in!")
//                }
//            }
//        }
    }
    func actionRegisterButton() {
        let vc = RegisterViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }

}

