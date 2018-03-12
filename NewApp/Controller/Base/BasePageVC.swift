//
//  BasePageVC.swift
//  NewApp
//
//  Created by Long on 2018/03/12.
//  Copyright © 2018 Oluxe. All rights reserved.
//

import UIKit

class BasePageVC: UIPageViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addLeftBarButton()
        addRightBarButton()
        removeTapRecognizer()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        naviMain.navigationBar.isHidden = true
    }
    
}

//*****************************************************************
// MARK: - Remove Tap to Slide Page
//*****************************************************************

extension UIPageViewController {
    func removeTapRecognizer() {
        let gestureRecognizers = self.gestureRecognizers
        
        var tapGesture: UIGestureRecognizer?
        gestureRecognizers.forEach { recognizer in
            if recognizer.isKind(of: UITapGestureRecognizer.self) {
                tapGesture = recognizer
            }
        }
        if let tapGesture = tapGesture {
            self.view.removeGestureRecognizer(tapGesture)
        }
    }
}
