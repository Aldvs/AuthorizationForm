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
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let loginVC = segue.destination as! WelcomeViewController
        loginVC.welcome = userNameTextField.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
    }
    
    // MARK: - IB Actions
    
    @IBAction func getLogInButton() {
        
        let autorizationData = ["username": "Andrew", "password": "password"]
        
        guard let inputUserText = userNameTextField.text, !inputUserText.isEmpty else {
            showAlert(title: "Error!", message: "Please, enter your username!")
            return
        }
        
        if let _ = Double(inputUserText) {
            showAlert(title: "Wrong format!", message: "Wrong username syntax")
            return
        }
        
        guard let inputPassText = passwordTextField.text, !inputPassText.isEmpty else {
            showAlert(title: "Error!", message: "Plaese, enter your password!")
            return
        }
        
        if autorizationData["username"] == inputUserText && autorizationData["password"] == inputPassText {
            return
        } else {
            showAlert(title: "Wrong", message: "Username or password")
        }
    }
    
    @IBAction func getUserNameAlert() {
        showAlert(title: "Here we go again!", message: "Your name is Andrew")
    }
    @IBAction func getPasswordAlert() {
        showAlert(title: "Here we go again!", message: "Your password is password")
    }
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
                userNameTextField.text = nil
                passwordTextField.text = nil
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


