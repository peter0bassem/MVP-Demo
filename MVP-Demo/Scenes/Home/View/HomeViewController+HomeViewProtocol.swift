//
//  HomeViewController+HomeViewProtocol.swift
//  MVP-Demo
//
//  Created by Peter Bassem on 10/13/20.
//  Copyright © 2020 Peter Bassem. All rights reserved.
//

import UIKit

extension HomeViewController: HomeViewProrocol {
    func displayEmail(email: String) {
        welcomeLabel.text = email
    }
    
    
}
