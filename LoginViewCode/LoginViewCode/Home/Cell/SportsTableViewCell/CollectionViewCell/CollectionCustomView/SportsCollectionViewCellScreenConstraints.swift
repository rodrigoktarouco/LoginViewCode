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
            self.viewBackGround.topAnchor.constraint(equalTo: self.topAnchor),
            self.viewBackGround.leftAnchor.constraint(equalTo: self.leftAnchor),
            self.viewBackGround.rightAnchor.constraint(equalTo: self.rightAnchor),
            self.viewBackGround.bottomAnchor.constraint(equalTo: self.bottomAnchor),
        ])
    }
}
