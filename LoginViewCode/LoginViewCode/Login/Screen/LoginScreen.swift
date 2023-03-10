//
//  LoginScreen.swift
//  LoginViewCode
//
//  Created by Rodrigo Kroef Tarouco on 27/02/23.
//

import UIKit
import SnapKit

protocol LoginScreenProtocol: AnyObject {
    func actionLoginButton()
    func actionRegisterButton()
}

class LoginScreen: UIView {

    private weak var delegate: LoginScreenProtocol?

    func delegate(delegate: LoginScreenProtocol?) {
        self.delegate = delegate
    }

    lazy var loginLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 40)
        label.text = "Login"
        return label
    }()

    lazy var logoAppImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "logo")
        image.tintColor = .green
        image.contentMode = .scaleAspectFit
        return image
    }()

    lazy var emailTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.autocorrectionType = .no
        textField.placeholder = "Insert email"
        textField.backgroundColor = .white
        textField.borderStyle = .roundedRect
        textField.keyboardType = .emailAddress
        textField.textColor = .darkGray
        textField.autocapitalizationType = .none
        return textField
    }()

    lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.autocorrectionType = .no
        textField.placeholder = "Insert password"
        textField.backgroundColor = .white
        textField.borderStyle = .roundedRect
        textField.keyboardType = .default
        textField.textColor = .darkGray
        textField.isSecureTextEntry = true
        return textField
    }()

    lazy var loginButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Login", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        button.setTitleColor(.white, for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 7.5
        button.backgroundColor = UIColor(red: 3/255, green: 58/255, blue: 51/255, alpha: 1.0)
        button.addTarget(self, action: #selector(didTappedLoginButton), for: .touchUpInside)
        return button
    }()

    lazy var registerButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Don't have an account? Register", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(didTapRegisterButton), for: .touchUpInside)
        return button
    }()


    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configBackground()
        self.configSuperView()

        //MARK: SnapKit
        self.configLoginLabelConstraint()
        self.configLogoAppImageViewConstraint()
        self.configEmailtextFieldConstraint()
        self.configPasswordTextFieldConstraint()
        self.configLoginButtonConstraint()
        self.configRegisterButtonConstraint()
        //----------------------------------------
        self.configButtonEnable(false)
    }

    private func configBackground() {
        self.backgroundColor = UIColor(red: 24/255, green: 117/255, blue: 104/255, alpha: 1.0)
    }

    private func configSuperView() {
        self.addSubview(loginLabel)
        self.addSubview(logoAppImageView)
        self.addSubview(emailTextField)
        self.addSubview(passwordTextField)
        self.addSubview(loginButton)
        self.addSubview(registerButton)
    }

    public func configTextFieldDelegate(delegate: UITextFieldDelegate) {
        self.emailTextField.delegate = delegate
        self.passwordTextField.delegate = delegate
    }

    @objc private func didTappedLoginButton() {
        self.delegate?.actionLoginButton()
    }

    @objc private func didTapRegisterButton() {
        self.delegate?.actionRegisterButton()
    }

    public func validateTextFields() {
        let email: String = self.emailTextField.text ?? ""
        let password: String = self.passwordTextField.text ?? ""

        if !email.isEmpty && !password.isEmpty {
            self.configButtonEnable(true)
        } else {
            self.configButtonEnable(false)
        }
    }

    private func configButtonEnable(_ enable: Bool) {
        if enable {
            self.loginButton.setTitleColor(.white, for: .normal)
            self.loginButton.isEnabled = true
        } else {
            self.loginButton.setTitleColor(.lightGray, for: .normal)
            self.loginButton.isEnabled = false
        }
    }

    public func getEmail() -> String {
        return self.emailTextField.text ?? ""
    }

    public func getPassword() -> String {
        return self.passwordTextField.text ?? ""
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
