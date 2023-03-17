//
//  SportCollectionViewCellScreen.swift
//  LoginViewCode
//
//  Created by Rodrigo Kroef Tarouco on 16/03/23.
//

import UIKit

class SportCollectionViewCellScreen: UIView {

    lazy var imageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        return image
    }()

    lazy var sportName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.textColor = .darkGray
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubView()
        self.configConstraints()

    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func addSubView() {
        self.addSubview(imageView)
        self.addSubview(sportName)
    }

}
