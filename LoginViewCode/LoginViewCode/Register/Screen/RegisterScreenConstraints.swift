//
//  RegisterScreenConstraints.swift
//  LoginViewCode
//
//  Created by Rodrigo Kroef Tarouco on 08/03/23.
//

import UIKit
import SnapKit

extension RegisterScreen {

    func configAddUserImageConstraint() {
        self.addUserImage.snp.makeConstraints { make in
            make.top.equalTo(self.safeAreaLayoutGuide.snp.top).offset(20)
            make.centerX.equalToSuperview()
            make.width.equalTo(150)
            make.height.equalTo(150)
        }
    }

    func configBackButtonConstraint() {
        self.backButton.snp.makeConstraints { make in
            make.top.equalTo(self.addUserImage.snp.top)
            make.leading.equalTo(self.safeAreaLayoutGuide.snp.leading).offset(20)

        }
    }

    func configEmailTextFieldConstraint() {
        self.emailTextField.snp.makeConstraints { make in
            make.top.equalTo(self.addUserImage.snp.bottom).offset(10)
            make.leading.equalTo(self.safeAreaLayoutGuide.snp.leading).offset(20)
            make.trailing.equalTo(self.safeAreaLayoutGuide.snp.trailing).inset(20)
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

    func configRegisterButtonConstraint() {
        self.registerButton.snp.makeConstraints { make in
            make.top.equalTo(self.passwordTextField.snp.bottom).offset(15)
            make.leading.equalTo(self.emailTextField.snp.leading)
            make.trailing.equalTo(self.emailTextField.snp.trailing)
            make.height.equalTo(self.emailTextField.snp.height)
        }
    }
}
