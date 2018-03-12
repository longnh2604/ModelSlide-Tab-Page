//
//  AppDelegate.swift
//  NewApp
//
//  Created by Long on 2018/03/12.
//  Copyright © 2018 Oluxe. All rights reserved.
//

import UIKit
import SlideMenuControllerSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        //Set constant option for Slide Menu
        SlideMenuOptions.leftViewWidth = kScreenSize.width * 0.5
        SlideMenuOptions.contentViewScale = 1.0
        SlideMenuOptions.contentViewDrag = true
        
        let kLeftMenuVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SideMenuVC") as? SideMenuVC
        kLeftMenuVC?.mainNavi = UINavigationController(rootViewController: mainTabbarController!)
        naviMain.navigationBar.isHidden = true
        
        //Setup Navigation bar
        UINavigationBar.appearance().barTintColor = UIColor(red: 106/255, green: 188/255, blue: 200/255, alpha: 1)
        UINavigationBar.appearance().tintColor = UIColor.white
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedStringKey.font: UIFont(name: "Arial", size: 20)!]
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedStringKey.foregroundColor:UIColor.white]
        
        //Setup tab bar
        UITabBar.appearance().barTintColor = UIColor(red: 239/255, green: 239/255, blue: 244/255, alpha: 1)
        let selectedColor   = UIColor.black
        let unselectedColor = UIColor.lightGray
        
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedStringKey.foregroundColor: unselectedColor], for: .normal)
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedStringKey.foregroundColor: selectedColor], for: .selected)
        
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedStringKey.font: UIFont(name: "Arial", size: 15)!], for: .normal)
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedStringKey.font: UIFont(name: "Arial", size: 15)!], for: .selected)
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

