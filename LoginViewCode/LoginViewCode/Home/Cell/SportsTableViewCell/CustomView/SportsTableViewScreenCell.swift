//
//  SportsTableViewCellScreen.swift
//  LoginViewCode
//
//  Created by Rodrigo Kroef Tarouco on 14/03/23.
//

import UIKit

class SportsTableViewScreenCell: UIView {

    lazy var collectionView: UICollectionView = {
        let collectionView: UICollectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: UICollectionViewLayout.init())
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.backgroundColor = .red
        collectionView.delaysContentTouches = false
        collectionView.register(SportsCollectionViewCell.self, forCellWithReuseIdentifier: SportsCollectionViewCell.identifier)
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout.init()
        layout.scrollDirection = .horizontal
        collectionView.setCollectionViewLayout(layout, animated: true)
        return collectionView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubView()
        self.configConstraints()

    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public func configProtocolsCollectionView(delegate: UICollectionViewDelegate, dataSource: UICollectionViewDataSource) {
        self.collectionView.delegate = delegate
        self.collectionView.dataSource = dataSource
    }

    func addSubView() {
        self.addSubview(collectionView)
    }

}
