//
//  MainTabBarVC.swift
//  NewApp
//
//  Created by Long on 2018/03/12.
//  Copyright © 2018 Oluxe. All rights reserved.
//

import UIKit
import SlideMenuControllerSwift

class MainTabBarVC: UITabBarController,UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        slideMenuVC.delegate = self
        self.delegate = self
    }
    
    //*****************************************************************
    // MARK: - UITabBar Delegate
    //*****************************************************************
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        kLeftMenuVC?.getSelectedVCInTabbar()?.navigationController?.popToRootViewController(animated: true)
        print("Selected view controller")
    }
}

//*****************************************************************
// MARK: - SlideMenu Delegate
//*****************************************************************
extension MainTabBarVC : SlideMenuControllerDelegate {
    
    func leftWillOpen() {
        print("SlideMenuControllerDelegate: leftWillOpen")
        
    }
    
    func leftDidOpen() {
        print("SlideMenuControllerDelegate: leftDidOpen")
        
    }
    
    func leftWillClose() {
        print("SlideMenuControllerDelegate: leftWillClose")
        
    }
    
    func leftDidClose() {
        print("SlideMenuControllerDelegate: leftDidClose")
        
    }
    
    func rightWillOpen() {
        
        print("SlideMenuControllerDelegate: rightWillOpen")
    }
    
    func rightDidOpen() {
        
        print("SlideMenuControllerDelegate: rightDidOpen")
    }
    
    func rightWillClose() {
        print("SlideMenuControllerDelegate: rightWillClose")
        
    }
    
    func rightDidClose() {
        print("SlideMenuControllerDelegate: rightDidClose")
        
    }
}
