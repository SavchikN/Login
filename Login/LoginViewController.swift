//
//  ViewController.swift
//  Login
//
//  Created by Nikita Savchik on 11/03/2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    // MARK: - IBOutlet's
    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    // MARK: - Private properties
    private let login = "User"
    private let password = "Password"
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.login = login
    }
    
    // MARK: - IBAction's
    @IBAction func logInButtonPressed() {
        guard loginTextField.text == login, passwordTextField.text == password else {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login or correct",
                textField: passwordTextField
            )
        return
        }
    }
    
    @IBAction func showAutorizationDate(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Oops!", message: "Your login - \(login) 😉")
            : showAlert(title: "Oops!", message: "Your password - \(password) 😉")
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        loginTextField.text = ""
        passwordTextField.text = ""
    }
}

// MARK: - Alert Controllers
extension LoginViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
