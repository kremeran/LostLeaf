//
//  LogInViewController.swift
//  LostLeaf
//
//  Created by Addison Kremer on 2/14/17.
//  Copyright © 2017 LostLeaf. All rights reserved.
//

import UIKit
import Firebase

class LogInViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        self.emailTextField.autocorrectionType = UITextAutocorrectionType.no
        self.emailTextField.becomeFirstResponder()
    }
    
    @IBAction func pressedBack(_ sender: Any) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "InitialVC")
        self.present(vc, animated: true, completion: nil)
    }

    @IBAction func pressedLogIn(_ sender: Any) {
        FIRAuth.auth()?.signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
            if (error == nil) {
                let sb = UIStoryboard(name: "Main", bundle: nil)
                let vc = sb.instantiateViewController(withIdentifier: "MainMenuVC")
                self.present(vc, animated: true, completion: nil)
            } else {
                self.errorLabel.text = "Invalid username or password"
            }
        }
    }
    

}
