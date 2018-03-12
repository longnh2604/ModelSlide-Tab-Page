//
//  LoginVC.swift
//  NewApp
//
//  Created by Long on 2018/03/12.
//  Copyright © 2018 Oluxe. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //*****************************************************************
    // MARK: - Login Handle
    //*****************************************************************
    
    @IBAction func onLogin(_ sender: UIButton) {
        delay(5.00) {
            self.present(slideMenuVC, animated: true, completion: nil)
        }
    }
    
}
