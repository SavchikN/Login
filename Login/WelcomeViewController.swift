//
//  WelcomeViewController.swift
//  Login
//
//  Created by Nikita Savchik on 13/03/2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var login = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(login)!"
    }
    
}
