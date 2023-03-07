//
//  RegisterScreen.swift
//  LoginViewCode
//
//  Created by Rodrigo Kroef Tarouco on 03/03/23.
//

import UIKit

protocol RegisterScreenProtocol: AnyObject {
    func actionBackButton()
    func actionRegisterButton()
}

class RegisterScreen: UIView {

    weak private var delegate: RegisterScreenProtocol?

    func delegate(delegate: RegisterScreenProtocol?) {
        self.delegate = delegate
    }

    lazy var backButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "back"), for: .normal)
        button.addTarget(self, action: #selector(self.didPressBackButton), for: .touchUpInside)
        return button
    }()

    lazy var addUserImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "usuario")
        image.contentMode = .scaleAspectFit
        return image
    }()

    lazy var emailTextField: UITextField = {
        let textfield = UITextField()
        textfield.translatesAutoresizingMaskIntoConstraints = false
        textfield.autocorrectionType = .no
        textfield.backgroundColor = .white
        textfield.borderStyle = .roundedRect
        textfield.keyboardType = .emailAddress
        textfield.placeholder = "Insert your email"
        textfield.font = UIFont.systemFont(ofSize: 14)
        textfield.textColor = .darkGray
        return textfield
    }()

    lazy var passwordTextField: UITextField = {
        let textfield = UITextField()
        textfield.translatesAutoresizingMaskIntoConstraints = false
        textfield.autocorrectionType = .no
        textfield.backgroundColor = .white
        textfield.borderStyle = .roundedRect
        textfield.keyboardType = .default
        textfield.placeholder = "Insert your password"
        textfield.isSecureTextEntry = true
        textfield.font = UIFont.systemFont(ofSize: 14)
        textfield.textColor = .darkGray
        return textfield
    }()

    lazy var registerButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Register", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 7.5
        button.backgroundColor = UIColor(red: 3/255, green: 58/255, blue: 51/255, alpha: 1.0)
        button.addTarget(self, action: #selector(self.didPressRegisterButton), for: .touchUpInside)
        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configBackground()
        self.configSuperView()
        self.setUpConstraints()
    }

    private func configSuperView() {
        self.addSubview(backButton)
        self.addSubview(addUserImage)
        self.addSubview(emailTextField)
        self.addSubview(passwordTextField)
        self.addSubview(registerButton)
    }

    private func configBackground() {
        self.backgroundColor = UIColor(red: 24/255, green: 117/255, blue: 104/255, alpha: 1.0)
    }

    public func configTextFieldDelegate(delegate: UITextFieldDelegate) {
        self.emailTextField.delegate = delegate
        self.passwordTextField.delegate = delegate
    }

    @objc private func didPressBackButton() {
        self.delegate?.actionBackButton()
    }

    @objc private func didPressRegisterButton() {
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
            self.registerButton.setTitleColor(.white, for: .normal)
            self.registerButton.isEnabled = true
        } else {
            self.registerButton.setTitleColor(.lightGray, for: .normal)
            self.registerButton.isEnabled = false
        }
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setUpConstraints() {
        NSLayoutConstraint.activate([
            self.addUserImage.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 20),
            self.addUserImage.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.addUserImage.widthAnchor.constraint(equalToConstant: 150),
            self.addUserImage.heightAnchor.constraint(equalToConstant: 150),

            self.backButton.topAnchor.constraint(equalTo: self.addUserImage.topAnchor),
            self.backButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),

            self.emailTextField.topAnchor.constraint(equalTo: self.addUserImage.bottomAnchor, constant: 10),
            self.emailTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            self.emailTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            self.emailTextField.heightAnchor.constraint(equalToConstant: 45),

            self.passwordTextField.topAnchor.constraint(equalTo: self.emailTextField.bottomAnchor, constant: 15),
            self.passwordTextField.leadingAnchor.constraint(equalTo: self.emailTextField.leadingAnchor),
            self.passwordTextField.trailingAnchor.constraint(equalTo: self.emailTextField.trailingAnchor),
            self.passwordTextField.heightAnchor.constraint(equalTo: self.emailTextField.heightAnchor),

            self.registerButton.topAnchor.constraint(equalTo: self.passwordTextField.bottomAnchor, constant: 15),
            self.registerButton.leadingAnchor.constraint(equalTo: self.emailTextField.leadingAnchor),
            self.registerButton.trailingAnchor.constraint(equalTo: self.emailTextField.trailingAnchor),
            self.registerButton.heightAnchor.constraint(equalTo: self.emailTextField.heightAnchor)

        ])
    }

}
