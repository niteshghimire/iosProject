//
//  User.swift
//  HDApp
//
//  Created by namicollege on 3/13/21.
//  Copyright © 2021 Home. All rights reserved.
//

import UIKit

class User: NSObject {
    var email: String?
    var password: String?
    
    override init() {
        self.email = ""
        self.password = ""
        
    }
    init(email:String?,password:String?) {
        self.email = email
        self.password = password
    }
    func validate()->Validation{
        let validation = Validation.init(status:true, message:"Sucess")
        if !Util.validateValue(enteredEmail: self.email ?? ""){
            validation.status = false
            validation.message = "Invalid email"
            return validation
            
        }
        if self.password?.count == 0{
            validation.status = false
            validation.message = "Empty Password"
            return validation
        }
        return validation
    }

}
