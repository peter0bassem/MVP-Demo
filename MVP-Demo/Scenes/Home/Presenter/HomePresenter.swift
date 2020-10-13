//
//  HomePresenter.swift
//  MVP-Demo
//
//  Created by Peter Bassem on 10/13/20.
//  Copyright © 2020 Peter Bassem. All rights reserved.
//

import Foundation

class HomePresenter: BasePresenter {
    
    weak var view: HomeViewProrocol?
    private var router: HomeRouter
    private var email: String
    
    init(view: HomeViewProrocol?, router: HomeRouter, email: String) {
        self.view = view
        self.router = router
        self.email = email
    }
}

extension HomePresenter: HomePresenterProtocol {
    
    func viewDidLoad() {
        view?.displayEmail(email: "welcome" + " " + email)
    }
}
