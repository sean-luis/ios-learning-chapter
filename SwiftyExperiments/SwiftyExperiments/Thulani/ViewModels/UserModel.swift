//
//  UserModel.swift
//  SwiftyExperiments
//
//  Created by Thulani Mtetwa on 2023/03/06.
//

import Foundation

struct UserViewModel { //Represents data from the server into more readable properties or data to be used for the view also we can add more logic here if data needs to be further processed
    
    var user: User
    
    var id: Int {
        user.id
    }
    
    var name: String {
        user.name
    }
    
    var username: String {
        user.username
    }
}
