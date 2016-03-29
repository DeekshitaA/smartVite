//
//  UserModel.swift
//  SmartVite
//
//  Created by Deekshita Amaravadi on 3/28/16.
//  Copyright © 2016 Deekshita Amaravadi. All rights reserved.
//

import Foundation

struct User {
    
    var email:String
    var firstName:String
    var lastName:String
    
    init(email: String, firstName: String, lastName: String) {
        self.email = email
        self.firstName = firstName
        self.lastName = lastName
    }

    
}
