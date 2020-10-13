//
//  ViewController.swift
//  MVP-Demo
//
//  Created by Peter Bassem on 10/13/20.
//  Copyright © 2020 Peter Bassem. All rights reserved.
//

import UIKit

class LoginViewController: BaseViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    var presenter: LoginPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        presenter = LoginPresenter(view: self, router: LoginRouter())
        presenter?.viewDidLoad()
    }

    @IBAction func loginButtonDidPressed(_ sender: UIButton) {
        presenter?.login(email: emailTextField.text ?? "", password: passwordTextField.text ?? "")
    }
}

