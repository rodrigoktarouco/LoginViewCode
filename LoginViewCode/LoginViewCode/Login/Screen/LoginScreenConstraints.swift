//
//  LoginScreenConstraints.swift
//  LoginViewCode
//
//  Created by Rodrigo Kroef Tarouco on 07/03/23.
//

import UIKit
import SnapKit

extension LoginScreen {

    func configLoginLabelConstraint() {
        self.loginLabel.snp.makeConstraints { (make) in
            make.top.equalTo(self.safeAreaLayoutGuide.snp.top).offset(20)
            make.centerX.equalToSuperview()
        }
    }
    
    func configLogoAppImageViewConstraint() {
        self.logoAppImageView.snp.makeConstraints { (make) in
            make.top.equalTo(self.loginLabel.snp.bottom).offset(20)
            make.leading.equalToSuperview().offset(60)
            make.trailing.equalToSuperview().inset(60)
            make.height.equalTo(200)
        }
    }

    func configEmailtextFieldConstraint() {
        self.emailTextField.snp.makeConstraints { make in
            make.top.equalTo(self.logoAppImageView.snp.bottom).offset(20)
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().inset(20)
            make.height.equalTo(45)
        }
    }

    func configPasswordTextFieldConstraint() {
        self.passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(self.emailTextField.snp.bottom).offset(15)
            make.leading.equalTo(self.emailTextField.snp.leading)
            make.trailing.equalTo(self.emailTextField.snp.trailing)
            make.height.equalTo(self.emailTextField.snp.height)
        }
    }

    func configLoginButtonConstraint() {
        self.loginButton.snp.makeConstraints { make in
            make.top.equalTo(self.passwordTextField.snp.bottom).offset(20)
            make.leading.equalTo(self.emailTextField.snp.leading)
            make.trailing.equalTo(self.emailTextField.snp.trailing)
            make.height.equalTo(self.emailTextField.snp.height)
        }
    }

    func configRegisterButtonConstraint() {
        self.registerButton.snp.makeConstraints { make in
            make.top.equalTo(self.loginButton.snp.bottom).offset(20)
            make.leading.equalTo(self.emailTextField.snp.leading)
            make.trailing.equalTo(self.emailTextField.snp.trailing)
            make.height.equalTo(self.emailTextField.snp.height)
        }
    }


    
}




