//
//  UserInfoViewController.swift
//  AuthorizationForm
//
//  Created by admin on 20.12.2021.
//

import UIKit

class UserInfoViewController: UIViewController {
    
    //MARK: - Public Properties
    var user: UserData!
    let personInfo = UserData.getUserData()

    //MARK: - Life Cycle MEthods
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarItem.title = user.person.fullName
        self.title = user.person.fullName
        
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let moreInfoVC = segue.destination as? MoreInfoViewController else { return }
        moreInfoVC.user = personInfo
    }

}
