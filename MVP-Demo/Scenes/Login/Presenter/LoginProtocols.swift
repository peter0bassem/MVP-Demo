//
//  LoginProtocols.swift
//  MVP-Demo
//
//  Created by Peter Bassem on 10/13/20.
//  Copyright © 2020 Peter Bassem. All rights reserved.
//

import Foundation

protocol LoginViewProtocol: BaseViewProtocol {
    var presenter: LoginPresenterProtocol? { get set }
    
    func changeBackgroundColor()
}

protocol LoginPresenterProtocol: BasePresenterProtocol {
    var view: LoginViewProtocol? { get set }
    
    func viewDidLoad()
    func login(email: String, password: String)
}
