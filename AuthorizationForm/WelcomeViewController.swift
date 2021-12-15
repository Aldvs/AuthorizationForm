//
//  WelcomeViewController.swift
//  AuthorizationForm
//
//  Created by admin on 15.12.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet weak var welcomeLabel: UILabel!
    
    var welcome: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, " + welcome + "! \n \u{270c}"
    }
    
    @IBAction func logoutAction(_ sender: UIButton) {
    }
}
