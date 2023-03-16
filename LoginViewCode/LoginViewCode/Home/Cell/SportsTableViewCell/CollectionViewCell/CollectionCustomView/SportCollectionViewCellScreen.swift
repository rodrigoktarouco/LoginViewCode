//
//  SportCollectionViewCellScreen.swift
//  LoginViewCode
//
//  Created by Rodrigo Kroef Tarouco on 16/03/23.
//

import UIKit

class SportCollectionViewCellScreen: UIView {

    lazy var viewBackGround: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .green
        return view
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
        self.addSubview(viewBackGround)
    }

}
