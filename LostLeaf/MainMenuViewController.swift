//
//  MainMenuViewController.swift
//  LostLeaf
//
//  Created by Addison Kremer on 2/14/17.
//  Copyright © 2017 LostLeaf. All rights reserved.
//

import UIKit
import Firebase

class MainMenuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func pressedLogOut(_ sender: Any) {
        let firebaseAuth = FIRAuth.auth()
        do {
            try firebaseAuth?.signOut()
        } catch let signOutError as NSError {
            print ("Error signing out: %@", signOutError)
        }
    }
    

}
