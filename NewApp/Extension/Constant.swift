//
//  Constant.swift
//  NewApp
//
//  Created by Long on 2018/03/12.
//  Copyright © 2018 Oluxe. All rights reserved.
//

import UIKit

//Screen size
let kScreenSize: CGSize = UIScreen.main.bounds.size

//Main storyboard
let kMain_Storyboard = UIStoryboard(name: "Main", bundle: nil)

//Init Main Tab Bar 
let mainTabbarController = kMain_Storyboard.instantiateViewController(withIdentifier: "idMainVC") as? MainTabBarVC
let naviMain = UINavigationController(rootViewController: mainTabbarController!)

//Init SideMenu
let kLeftMenuVC = kMain_Storyboard.instantiateViewController(withIdentifier: "SideMenuVC") as? SideMenuVC
let kRightMenuVC = kMain_Storyboard.instantiateViewController(withIdentifier: "RightMenuVC") as? RightMenuVC

let slideMenuVC = ExSlideMenuController(mainViewController: naviMain, leftMenuViewController: kLeftMenuVC!, rightMenuViewController: kRightMenuVC!)
//let slideMenuVC = ExSlideMenuController(mainViewController:naviMain, leftMenuViewController: kLeftMenuVC!)

/// The total animation duration of the splash animation
let kAnimationDuration: TimeInterval = 3.0

/// The length of the second part of the duration
let kAnimationDurationDelay: TimeInterval = 0.5

/// The offset between the AnimatedULogoView and the background Grid
let kAnimationTimeOffset: CFTimeInterval = 0.35 * kAnimationDuration

/// The ripple magnitude. Increase by small amounts for amusement ( <= .2) :]
let kRippleMagnitudeMultiplier: CGFloat = 0.025
