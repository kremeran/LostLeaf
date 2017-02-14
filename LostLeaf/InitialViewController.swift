//
//  InitialViewController.swift
//  LostLeaf
//
//  Created by Addison Kremer on 2/14/17.
//  Copyright © 2017 LostLeaf. All rights reserved.
//

import UIKit

class InitialViewController: UIViewController {

    @IBAction func LogInButton(_ sender: Any) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "LogInVC")
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func SignUpButton(_ sender: Any) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "SignUpVC")
        self.present(vc, animated: true, completion: nil)
    }

}
