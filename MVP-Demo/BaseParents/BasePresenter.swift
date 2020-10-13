//
//  BasePresenter.swift
//  MVP-Demo
//
//  Created by Peter Bassem on 10/13/20.
//  Copyright © 2020 Peter Bassem. All rights reserved.
//

import Foundation

class BasePresenter {
    
    func showAlert(error: String) {
        print("error:", error)
    }
}

extension BasePresenter: BasePresenterProtocol {
    func showErrorAlert(error: String) {
        showAlert(error: error)
    }
}
