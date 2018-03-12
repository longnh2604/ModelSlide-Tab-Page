//
//  Utils.swift
//  NewApp
//
//  Created by Long on 2018/03/12.
//  Copyright © 2018 Oluxe. All rights reserved.
//

import UIKit

//*****************************************************************
// MARK: - UIColor
//*****************************************************************

public extension UIColor {
    public class func fuberBlue()->UIColor {
        struct C {
            static var c : UIColor = UIColor(red: 15/255, green: 78/255, blue: 101/255, alpha: 1)
        }
        return C.c
    }
    
    public class func fuberLightBlue()->UIColor {
        struct C {
            static var c : UIColor = UIColor(red: 77/255, green: 181/255, blue: 217/255, alpha: 1)
        }
        return C.c
    }
}

//*****************************************************************
// MARK: - Delay
//*****************************************************************

public func delay(_ delay:Double, closure:@escaping ()->()) {
    DispatchQueue.main.asyncAfter(
        deadline: DispatchTime.now() + Double(Int64(delay * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC), execute: closure)
}
