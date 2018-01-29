//
//  UserModel.swift
//  EnTest
//
//  Created by Jennifer Luong on 12/7/17.
//  Copyright © 2017 Cheat Codes. All rights reserved.
//

import UIKit
import Foundation

class UserModel: NSObject {
    
    // Declaring variables
    var username: String?
    var password: String?
    var firstName: String?
    var lastName: String?
    var email: String?
    
    // Creating an empty constructor.
    // Nothing is delcared at the moment.
    // Values will be passed once it reads the data.
    override init() {
        
    }
    
    // New constructor with @username, @password, @firstName, @lastName, @email (and phone number)
    init (username: String, password: String, firstName: String, lastName: String, email: String) {
        self.username = username
        self.password = password
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
    }
    
    // Print object's current state
    override var description: String {
        return "Username: \(username), Password: \(password), Name: \(firstName)\(lastName), E-mail: \(email) "
    }
    
}

