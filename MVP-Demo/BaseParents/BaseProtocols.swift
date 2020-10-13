//
//  BaseProtocols.swift
//  MVP-Demo
//
//  Created by Peter Bassem on 10/13/20.
//  Copyright © 2020 Peter Bassem. All rights reserved.
//

import Foundation

protocol BaseViewProtocol: class {
    func showLoading()
    func hideLoading()
    func showErrorAlert(error: String)
}

protocol BasePresenterProtocol: class {
    func showErrorAlert(error: String)
}
