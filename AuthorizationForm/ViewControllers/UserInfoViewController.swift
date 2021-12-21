//
//  UserInfoViewController.swift
//  AuthorizationForm
//
//  Created by admin on 20.12.2021.
//

import UIKit

class UserInfoViewController: UIViewController {
    
    var user: UserData!
    let personInfo = UserData.getUserData()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = user.person.fullName

        // Do any additional setup after loading the view.
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let moreInfoVC = segue.destination as? MoreInfoViewController else { return }
        moreInfoVC.user = personInfo
    }

}
