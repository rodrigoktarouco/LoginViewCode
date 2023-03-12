//
//  HomeViewController.swift
//  LoginViewCode
//
//  Created by Rodrigo Kroef Tarouco on 11/03/23.
//

import UIKit

class HomeViewController: UIViewController {

    var homeScreen: HomeScreen?
    var data: [UserData] = [
        UserData(name: "Zeca", nameImage: "menino1"),
        UserData(name: "Zequinha", nameImage: "menino2"),
        UserData(name: "Jujuba", nameImage: "menina1")

    ]

    override func loadView() {
            self.homeScreen = HomeScreen()
            self.view = homeScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.homeScreen?.configTableViewProtocols(delegate: self, dataSource: self)
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UserDetailTableViewCell? = tableView.dequeueReusableCell(withIdentifier: UserDetailTableViewCell.identifier, for: indexPath) as? UserDetailTableViewCell
        cell?.setUpCell(data: data[indexPath.row])
        return cell ?? UITableViewCell()
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
}


