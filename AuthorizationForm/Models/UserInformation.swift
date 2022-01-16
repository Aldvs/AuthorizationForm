//
//  UserInformation.swift
//  AuthorizationForm
//
//  Created by admin on 19.12.2021.
//

struct UserData {
    
    let login: String
    let password: String
    let person: Person
    
    static func getUserData() -> UserData {
        UserData(
            login: "Andrew",
            password: "password",
            person: .getPersonInformation()
        )
    }
}

struct Person {
    
    let name: String
    let surname: String
    let hobby: String
    let education: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPersonInformation() -> Person {
        Person(
            name: "Андрей",
            surname: "Гоголь",
            hobby: "Спортзал",
            education: "Информационная безопасность"
        )
    }
    
}
