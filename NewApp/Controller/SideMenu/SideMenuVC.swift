//
//  SideMenuVC.swift
//  NewApp
//
//  Created by Long on 2018/03/12.
//  Copyright © 2018 Oluxe. All rights reserved.
//

import UIKit

class SideMenuVC: UIViewController {

    // Variable
    var mainNavi : UINavigationController?
    var settingVC: SettingVC?
    
    @IBOutlet weak var tblSideMenu: UITableView!
    
    var menuOptions = ["Home", "Setting", "Logout"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
    
    func setupUI() {
        tblSideMenu.tableFooterView = UIView()
        
        settingVC = kMain_Storyboard.instantiateViewController(withIdentifier: "SettingVC") as? SettingVC
    }

    func getSelectedVCInTabbar() -> UIViewController?{
        if let navi_help = mainTabbarController?.viewControllers![(mainTabbarController?.selectedIndex)!] as? UINavigationController{
            return navi_help.viewControllers[0]
        }
        return nil
    }
    
    func changeViewController(_ index : Int) {
        switch index {
        case 0:
            DispatchQueue.main.async {
                mainTabbarController?.selectedIndex = 0
                self.getSelectedVCInTabbar()?.navigationController?.popToRootViewController(animated: true)
            }
            break
        case 1:
            getSelectedVCInTabbar()?.navigationController?.pushViewController(settingVC!, animated: true)
            break
        case 2:
            UserDefaults.standard.set("logout", forKey: "LoginState")
            UserDefaults.standard.synchronize()
            
//            let loginPageView =  self.storyboard?.instantiateViewController(withIdentifier: "LoginVC") as! LoginVC
//            self.present(loginPageView, animated: true, completion: nil)
            self.dismiss(animated: true, completion: nil)
            break
        default:
            
            break
        }
        toggleLeft()
    }
    
}

//*****************************************************************
// MARK: - TableView Delegate, Datasource
//*****************************************************************
extension SideMenuVC: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuOptions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : SideMenuCell = tableView.dequeueReusableCell(withIdentifier: "SideMenuCell") as! SideMenuCell
        cell.lblTitle.text = menuOptions[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        changeViewController(indexPath.row)
    }
}
