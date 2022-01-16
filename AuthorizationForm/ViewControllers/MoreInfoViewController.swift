//
//  MoreInfoViewController.swift
//  AuthorizationForm
//
//  Created by admin on 20.12.2021.
//

import UIKit

class MoreInfoViewController: UIViewController {
    
    @IBOutlet weak var moreInfoLabel: UILabel!
    
    //MARK: - Public Properties
    var user: UserData!
    
    //MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        moreInfoLabel.text = """
                             Полное имя: \n\(user.person.fullName)
                             
                             Образование: \n\(user.person.education)
                             
                             Хобби: \n\(user.person.hobby)
                             """
        
    }
}
