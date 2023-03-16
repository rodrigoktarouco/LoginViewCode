//
//  SportsTableViewCellScreenConstraints.swift
//  LoginViewCode
//
//  Created by Rodrigo Kroef Tarouco on 15/03/23.
//

import UIKit

extension SportsTableViewScreenCell {
    func configConstraints() {
        NSLayoutConstraint.activate([
            self.collectionView.topAnchor.constraint(equalTo: self.topAnchor),
            self.collectionView.leftAnchor.constraint(equalTo: self.leftAnchor),
            self.collectionView.rightAnchor.constraint(equalTo: self.rightAnchor),
            self.collectionView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
        ])
    }

    func configConstraintsCollectionView() {
        self.collectionView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}
