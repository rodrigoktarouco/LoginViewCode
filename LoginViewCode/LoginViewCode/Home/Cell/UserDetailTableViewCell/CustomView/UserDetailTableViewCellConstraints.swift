//
//  UserDetailTableViewCellConstraints.swift
//  LoginViewCode
//
//  Created by Rodrigo Kroef Tarouco on 12/03/23.
//

import UIKit

extension UserDetailView {
    func setUpConstraints() {
        configUserImageViewConstraints()
        configNameLabelConstraints()
    }

    func configUserImageViewConstraints() {
        NSLayoutConstraint.activate([
            self.userImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            self.userImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.userImageView.heightAnchor.constraint(equalToConstant: 80),
            self.userImageView.widthAnchor.constraint(equalToConstant: 80)
        ])
    }

    func configNameLabelConstraints() {
        NSLayoutConstraint.activate([
            self.namedLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            self.namedLabel.leadingAnchor.constraint(equalTo: self.userImageView.trailingAnchor, constant: 20)
        ])
    }
}
