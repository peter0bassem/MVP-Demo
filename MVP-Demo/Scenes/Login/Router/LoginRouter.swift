//
//  LoginRouter.swift
//  MVP-Demo
//
//  Created by Peter Bassem on 10/13/20.
//  Copyright © 2020 Peter Bassem. All rights reserved.
//

import UIKit

class LoginRouter {
    
    class func createLoginViewController() -> UIViewController {
        let loginViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LoginViewController")
        
        let loginView = loginViewController as? LoginViewProtocol
        let router = LoginRouter()
        let presenter = LoginPresenter(view: loginView, router: router)
        loginView?.presenter = presenter
        return loginViewController
    }
    
    func navigateToHome(from view: LoginViewProtocol?, email: String) {
        let homeViewController = HomeRouter.createHomeViewController(email: email)
        if let loginViewController = view as? UIViewController {
            loginViewController.present(homeViewController, animated: true)
        }
    }
}

