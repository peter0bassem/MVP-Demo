//
//  BaseViewController.swift
//  MVP-Demo
//
//  Created by Peter Bassem on 10/13/20.
//  Copyright © 2020 Peter Bassem. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}

extension BaseViewController: BaseViewProtocol {
    
    func showLoading() {
        print("show loading")
    }
    
    func hideLoading() {
        print("hide loading")
    }
    
    func showErrorAlert(error: String) {
        print("error:", error)
    }
}
