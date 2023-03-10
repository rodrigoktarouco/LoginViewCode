//
//  AlertManager.swift
//  LoginViewCode
//
//  Created by Rodrigo Kroef Tarouco on 10/03/23.
//

import UIKit

class AlertManager: NSObject {
    var controller: UIViewController

    init(controller: UIViewController) {
        self.controller = controller
    }

    func getAlert(title: String, message: String, completion:(() -> Void)? = nil) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let cancel = UIAlertAction(title: "Ok", style: .cancel) { action in
            completion?()
        }
        alertController.addAction(cancel)
        self.controller.present(alertController, animated: true, completion: nil)
    }

}
