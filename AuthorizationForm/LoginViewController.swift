//
//  ViewController.swift
//  AuthorizationForm
//
//  Created by admin on 15.12.2021.
//

import UIKit

class LoginViewController: UIViewController {

    // MARK: IB Outlets
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var forgotPassButton: UIButton!
    @IBOutlet weak var forgotNameButton: UIButton!
    
    // MARK: Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let loginVC = segue.destination as! WelcomeViewController
        loginVC.welcome = userNameTextField.text
    }
    
    // MARK: - IB Actions
    
    @IBAction func getLogInButton() {
    }
    
    @IBAction func getUserNameAlert() {
        showAlert(title: "Ooops!", message: "Your name is Andrew")
    }
    @IBAction func getPasswordAlert() {
        showAlert(title: "Ooops!", message: "Your password is Password")
    }
}

// MARK: - Private Methods
extension LoginViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}


