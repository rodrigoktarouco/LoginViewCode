//
//  SportsTableViewCellProtocols.swift
//  LoginViewCode
//
//  Created by Rodrigo Kroef Tarouco on 16/03/23.
//

import UIKit

extension SportsTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: SportsCollectionViewCell? = collectionView.dequeueReusableCell(withReuseIdentifier: SportsCollectionViewCell.identifier, for: indexPath) as? SportsCollectionViewCell
        cell?.setupCell(data: Sport(name: "Yoga", nameImage: "yoga"))
        return cell ?? UICollectionViewCell()
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 140, height: 100)
    }
}
