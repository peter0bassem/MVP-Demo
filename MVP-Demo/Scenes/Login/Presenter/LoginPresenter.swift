//
//  LoginPresenter.swift
//  MVP-Demo
//
//  Created by Peter Bassem on 10/13/20.
//  Copyright © 2020 Peter Bassem. All rights reserved.
//

import Foundation

class LoginPresenter: BasePresenter {
    
    weak var view: LoginViewProtocol?
    private var router: LoginRouter
    init(view: LoginViewProtocol?, router: LoginRouter) {
        self.view = view
        self.router = router
    }
}

extension LoginPresenter: LoginPresenterProtocol {
    func viewDidLoad() {
        view?.changeBackgroundColor()
    }
    
    func login(email: String, password: String) {
        /**
         show loading
         api call
         hide loading
         -> success: navigate to home
         -> error: show error alert
         */
        
        view?.showLoading()
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.view?.hideLoading()
            // navigate to home
            self.router.navigateToHome(from: self.view, email: email)
            
            // show error aler
//            self.view?.showErrorAlert(error: "failed to login")
        }
    }
}
