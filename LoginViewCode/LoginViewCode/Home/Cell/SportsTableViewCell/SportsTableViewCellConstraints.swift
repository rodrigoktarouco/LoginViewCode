//
//  SportsTableViewCellConstraints.swift
//  LoginViewCode
//
//  Created by Rodrigo Kroef Tarouco on 15/03/23.
//

import UIKit

extension SportsTableViewCell {
    func configConstraints() {
        NSLayoutConstraint.activate([
            self.sportsTableViewCellScreen.topAnchor.constraint(equalTo: self.topAnchor),
            self.sportsTableViewCellScreen.leftAnchor.constraint(equalTo: self.leftAnchor),
            self.sportsTableViewCellScreen.rightAnchor.constraint(equalTo: self.rightAnchor),
            self.sportsTableViewCellScreen.bottomAnchor.constraint(equalTo: self.bottomAnchor),
        ])
    }
}
