//
//  SportsCollectionViewCellConstraints.swift
//  LoginViewCode
//
//  Created by Rodrigo Kroef Tarouco on 16/03/23.
//

import UIKit

extension SportsCollectionViewCell {
    func configConstraints() {
        NSLayoutConstraint.activate([
            self.sportsCollectionViewCellScreen.topAnchor.constraint(equalTo: self.topAnchor),
            self.sportsCollectionViewCellScreen.leftAnchor.constraint(equalTo: self.leftAnchor),
            self.sportsCollectionViewCellScreen.rightAnchor.constraint(equalTo: self.rightAnchor),
            self.sportsCollectionViewCellScreen.bottomAnchor.constraint(equalTo: self.bottomAnchor),
        ])
    }
}
