//
//  MoreInfoViewController.swift
//  AuthorizationForm
//
//  Created by admin on 20.12.2021.
//

import UIKit

class MoreInfoViewController: UIViewController {
    
    @IBOutlet weak var moreInfoLabel: UILabel!
    var user: UserData!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        moreInfoLabel.text = user.person.education + user.person.hobby


    }
}
