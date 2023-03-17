//
//  SportsCollectionViewCell.swift
//  LoginViewCode
//
//  Created by Rodrigo Kroef Tarouco on 16/03/23.
//

import UIKit

class SportsCollectionViewCell: UICollectionViewCell {

    static let identifier: String = "SportsCollectionViewCell"

    let sportsCollectionViewCellScreen: SportCollectionViewCellScreen = SportCollectionViewCellScreen()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubView()
        self.configConstraints()
    }

    public func setupCell(data: Sport) {
        self.sportsCollectionViewCellScreen.imageView.image = UIImage(named: data.nameImage)
        self.sportsCollectionViewCellScreen.sportName.text = data.name
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func addSubView() {
        self.sportsCollectionViewCellScreen.layer.borderWidth = 6.0
        self.sportsCollectionViewCellScreen.layer.borderColor = UIColor.blue.cgColor
        self.sportsCollectionViewCellScreen.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(sportsCollectionViewCellScreen)
    }

}
