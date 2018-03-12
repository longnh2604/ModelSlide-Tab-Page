//
//  UIViewController.swift
//  NewApp
//
//  Created by Long on 2018/03/12.
//  Copyright © 2018 Oluxe. All rights reserved.
//

import UIKit
import SlideMenuControllerSwift
extension UIViewController {
    
    func addLeftBarButton() {
        self.addLeftBarButtonWithImage(UIImage(named: "sideMenuIcon")!)
        self.slideMenuController()?.removeLeftGestures()
        self.slideMenuController()?.addLeftGestures()
    }
    
    func addRightBarButton() {
        self.addRightBarButtonWithImage(UIImage(named: "sideMenuIcon")!)
        self.slideMenuController()?.removeRightGestures()
        self.slideMenuController()?.addRightGestures()
    }
    
//    func addRightBarButton() {
//        self.addRigtBarButtonWithImage(UIImage(named: "sideMenuIcon")!, action: #selector(openPhotoVC))
//        self.slideMenuController()?.removeRightGestures()
//        self.slideMenuController()?.addRightGestures()
//    }
    
    func removeNavigationBarItem() {
        self.navigationItem.leftBarButtonItem = nil
        self.navigationItem.rightBarButtonItem = nil
        self.slideMenuController()?.removeLeftGestures()
        self.slideMenuController()?.removeRightGestures()
    }
    
    public func addLeftBarButtonWithImage(_ buttonImage: UIImage, action:Selector?) {
        let leftButton: UIBarButtonItem = UIBarButtonItem(image: buttonImage, style: UIBarButtonItemStyle.plain, target: self, action:action)
        navigationItem.leftBarButtonItem = leftButton;
    }
    public func addRigtBarButtonWithImage(_ buttonImage: UIImage, action:Selector?) {
        let rightButton: UIBarButtonItem = UIBarButtonItem(image: buttonImage, style: UIBarButtonItemStyle.plain, target: self, action:action)
        navigationItem.rightBarButtonItem = rightButton;
    }
    
    public func addRightBarTwoButtonWithImage(button1 : UIBarButtonItem, button2 : UIBarButtonItem) {
        navigationItem.rightBarButtonItems = [button1 , button2]
    }
    
    public func addRightBarButtonWithImage(button1 : UIBarButtonItem) {
        navigationItem.rightBarButtonItem = button1
    }
    
    func dismissVC(sender: AnyObject){
        self.dismiss(animated: true)
    }
    
    @objc func openPhotoVC() {
        
    }
}
