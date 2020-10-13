//
//  HomeProtocols.swift
//  MVP-Demo
//
//  Created by Peter Bassem on 10/13/20.
//  Copyright © 2020 Peter Bassem. All rights reserved.
//

import Foundation

protocol HomeViewProrocol: BaseViewProtocol {
    var presenter: HomePresenterProtocol? { get set }
    
    func displayEmail(email: String)
}

protocol HomePresenterProtocol: BasePresenterProtocol {
    var view: HomeViewProrocol? { get set }
    
    func viewDidLoad()
}
