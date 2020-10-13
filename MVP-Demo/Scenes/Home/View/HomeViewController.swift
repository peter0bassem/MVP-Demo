//
//  HomeViewController.swift
//  MVP-Demo
//
//  Created by Peter Bassem on 10/13/20.
//  Copyright © 2020 Peter Bassem. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    var presenter: HomePresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        presenter?.viewDidLoad()
    }
}
