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
        welcomeLabel.text = welcome
    }
    
    @IBAction func logOutAction() {
        dismiss(animated: true)
    }

}
