//
//  UserInformation.swift
//  AuthorizationForm
//
//  Created by admin on 19.12.2021.
//

struct UserData {
    
    let login = "Andrew"
    let password = "password"
    
}

struct UserInformation {
    
    let name: String
    let surname: String
    let hobby: String
    let education: String
    
    static func getUserInformation() -> UserInformation {
        
        UserInformation(name: "Андрей", surname: "Гоголь", hobby: "Спортзал", education: "Информационная безопасность")
    }
    
}
