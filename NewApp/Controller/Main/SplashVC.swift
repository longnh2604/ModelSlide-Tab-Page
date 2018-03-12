//
//  SplashVC.swift
//  NewApp
//
//  Created by Long on 2018/03/12.
//  Copyright © 2018 Oluxe. All rights reserved.
//

import UIKit

class SplashVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        checkLoginState()
    }
    
    //*****************************************************************
    // MARK: - Login Check
    //*****************************************************************
    
    func checkLoginState() {
        if UserDefaults.standard.string(forKey: "LoginState") == "logined" {
            goToMainView()
        } else {
            delay(3.00) {
                self.goToLoginView()
            }
        }
    }
    
    //*****************************************************************
    // MARK: - LoginView or MainView Handle
    //*****************************************************************
    
    func goToMainView() {
        let group = DispatchGroup()
        group.enter()
        
        DispatchQueue.main.async {
            //handle data
            group.leave()
        }
        
        group.notify(queue: .main) {
            delay(5.00) {
                self.present(slideMenuVC, animated: true, completion: nil)
            }
        }
    }
    
    func goToLoginView() {
        let loginPageView =  self.storyboard?.instantiateViewController(withIdentifier: "LoginVC") as! LoginVC
        self.present(loginPageView, animated: true, completion: nil)
    }

}
