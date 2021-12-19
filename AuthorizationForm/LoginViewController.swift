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
    
    //MARK: Public Properties
    private let userName = "Andrew"
    private let password = "password"
    
    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.welcomeUser = userNameTextField.text
    }
    
    // MARK: - IB Actions
    @IBAction func logInPressed() {
        
        guard let inputUserText = userNameTextField.text, !inputUserText.isEmpty else {
            showAlert(title: "Empty login field", message: "Please, enter your login")
            return
        }
        
        if let _ = Double(inputUserText) {
            showAlert(title: "Invalid syntax", message: "Please, don't use numbers in login field")
            return
        }
        
        guard let inputPassText = passwordTextField.text, !inputPassText.isEmpty else {
            showAlert(title: "Empty password field", message: "Plaese, enter your password")
            return
        }
        
        if userName == inputUserText && password == inputPassText {
            return
        } else {
            showAlert(title: "Invalid login or password", message: "Please, enter correct data")
            passwordTextField.text = ""
        }
    }
    
    @IBAction func forgotAutorizationData(_ sender: UIButton) {
        sender.tag == 0
            ? showAlert(title: "Here we go again!", message: "Your name is Andrew")
            : showAlert(title: "Here we go again!", message: "Your password is password")
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
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTextField {
            passwordTextField.becomeFirstResponder()
        } else {
            logInPressed()
            performSegue(withIdentifier: "showWelcomeVC", sender: nil)
        }
        return true
    }
}



