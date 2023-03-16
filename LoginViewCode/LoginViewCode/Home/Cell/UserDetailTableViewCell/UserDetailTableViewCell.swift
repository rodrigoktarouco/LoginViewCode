//
//  UserDetailTableViewCell.swift
//  LoginViewCode
//
//  Created by Rodrigo Kroef Tarouco on 12/03/23.
//

import UIKit

class UserDetailTableViewCell: UITableViewCell {

    static let identifier: String = "UserDetailTableViewCell"

    lazy var userDetailView: UserDetailView = {
        let view = UserDetailView()
        return view
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.addSubview()
        self.configConstraintsDescriptionCell()
        
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func addSubview() {
        self.contentView.addSubview(userDetailView)
    }

    public func setUpCell(data: UserData) {
        self.userDetailView.namedLabel.text = data.name
        self.userDetailView.userImageView.image = UIImage(named: data.nameImage)
    }

    private func configConstraintsDescriptionCell() {
        self.userDetailView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }

}
