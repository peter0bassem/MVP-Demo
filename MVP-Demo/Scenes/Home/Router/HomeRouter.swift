//
//  HomeRouter.swift
//  MVP-Demo
//
//  Created by Peter Bassem on 10/13/20.
//  Copyright © 2020 Peter Bassem. All rights reserved.
//

import UIKit

class HomeRouter {
    
    class func createHomeViewController(email: String) -> UIViewController {
        let homeViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HomeViewController")
        
        let homeView = homeViewController as? HomeViewProrocol
        let router = HomeRouter()
        let presenter = HomePresenter(view: homeView, router: router, email: email)
        homeView?.presenter = presenter
        return homeViewController
    }
}

