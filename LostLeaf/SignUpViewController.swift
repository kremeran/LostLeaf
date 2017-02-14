//
//  SignUpViewController.swift
//  LostLeaf
//
//  Created by Addison Kremer on 2/14/17.
//  Copyright © 2017 LostLeaf. All rights reserved.
//

import UIKit
import Firebase

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField1: UITextField!
    @IBOutlet weak var passwordTextField2: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        self.emailTextField.autocorrectionType = UITextAutocorrectionType.no
        self.emailTextField.becomeFirstResponder()
    }

    @IBAction func pressedSignUp(_ sender: Any) {
        FIRAuth.auth()?.createUser(withEmail: emailTextField.text!, password: passwordTextField1.text!) { (user, error) in
            if (error == nil) {
                let sb = UIStoryboard(name: "Main", bundle: nil)
                let vc = sb.instantiateViewController(withIdentifier: "MainMenuVC")
                self.present(vc, animated: true, completion: nil)
            } else {
                self.errorLabel.text = "Must use a valid email and a password with atleast 6 characters"
                print(error!)
            }
        }
    }
    
    @IBAction func pressedBack(_ sender: Any) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "InitialVC")
        self.present(vc, animated: true, completion: nil)
    }

}
