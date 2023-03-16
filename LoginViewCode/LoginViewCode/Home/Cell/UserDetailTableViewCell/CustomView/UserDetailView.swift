//
//  UserDetailView.swift
//  LoginViewCode
//
//  Created by Rodrigo Kroef Tarouco on 13/03/23.
//

import UIKit

class UserDetailView: UIView {

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

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview()
        self.setUpConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func addSubview() {
        self.addSubview(userImageView)
        self.addSubview(namedLabel)
    }

    

}
