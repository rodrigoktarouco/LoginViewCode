//
//  SportsCollectionViewCellScreenConstraints.swift
//  LoginViewCode
//
//  Created by Rodrigo Kroef Tarouco on 16/03/23.
//

import UIKit

extension SportCollectionViewCellScreen {
    func configConstraints() {
        NSLayoutConstraint.activate([
            self.imageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            self.imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            self.imageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            self.imageView.bottomAnchor.constraint(equalTo: self.sportName.topAnchor, constant: -10),

            self.sportName.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            self.sportName.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            self.sportName.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
            self.sportName.heightAnchor.constraint(equalToConstant: 20),
        ])
    }
}
