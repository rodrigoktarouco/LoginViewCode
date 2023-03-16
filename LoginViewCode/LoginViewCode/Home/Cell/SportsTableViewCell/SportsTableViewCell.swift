//
//  SportsTableViewCell.swift
//  LoginViewCode
//
//  Created by Rodrigo Kroef Tarouco on 14/03/23.
//

import UIKit

class SportsTableViewCell: UITableViewCell {

    var sportsTableViewCellScreen: SportsTableViewScreenCell = SportsTableViewScreenCell()

    static let identifier: String = "SportsTableViewCell"

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.addSubView()
        self.configConstraints()
        self.sportsTableViewCellScreen.configProtocolsCollectionView(delegate: self, dataSource: self)

    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func addSubView() {
        self.sportsTableViewCellScreen.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(self.sportsTableViewCellScreen)
    }
}
