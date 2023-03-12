//
//  UserDetailTableViewCell.swift
//  LoginViewCode
//
//  Created by Rodrigo Kroef Tarouco on 12/03/23.
//

import UIKit

class UserDetailTableViewCell: UITableViewCell {

    static let identifier: String = "UserDetailTableViewCell"

    lazy var userImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        return image
    }()

    lazy var namedLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        return label
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.addSubview()
        self.setUpConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func addSubview() {
        self.contentView.addSubview(userImageView)
        self.contentView.addSubview(namedLabel)
    }

    public func setUpCell(data: UserData) {
        self.namedLabel.text = data.name
        self.userImageView.image = UIImage(named: data.nameImage)
    }

}
