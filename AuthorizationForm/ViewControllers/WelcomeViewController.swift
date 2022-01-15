//
//  WelcomeViewController.swift
//  AuthorizationForm
//
//  Created by admin on 15.12.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet weak var welcomeLabel: UILabel!
    
    // MARK: - Public Properties
    var user: UserData!
    
    // MARK: - Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarItem.title = "Home"

        welcomeLabel.text = "Welcome, " + user.person.fullName + ", 🤔"
    }
    
    // MARK: - IB Actions
    @IBAction func logoutAction(_ sender: UIButton) {
    }
}
