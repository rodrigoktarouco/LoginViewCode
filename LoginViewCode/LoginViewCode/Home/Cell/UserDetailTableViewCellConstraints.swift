//
//  UserDetailTableViewCellConstraints.swift
//  LoginViewCode
//
//  Created by Rodrigo Kroef Tarouco on 12/03/23.
//

import UIKit

extension UserDetailTableViewCell {
    func setUpConstraints() {
        NSLayoutConstraint.activate([
            self.userImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            self.userImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.userImageView.heightAnchor.constraint(equalToConstant: 80),
            self.userImageView.widthAnchor.constraint(equalToConstant: 80),

            self.namedLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            self.namedLabel.leadingAnchor.constraint(equalTo: self.userImageView.trailingAnchor, constant: 20)
        ])
    }
}
