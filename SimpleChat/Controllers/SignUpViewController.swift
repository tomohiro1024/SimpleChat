//
//  SignUpViewController.swift
//  SimpleChat
//
//  Created by 宮野智宏 on 2021/07/04.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var profileImageButton: UIButton!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var alreadyHaveAccountButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profileImageButton.layer.cornerRadius = 85
        profileImageButton.layer.borderWidth = 1
        profileImageButton.layer.borderColor = UIColor.rgb(red: 240, green: 240, blue: 240).cgColor
        
        registerButton.layer.cornerRadius = 12
    }
    
}
