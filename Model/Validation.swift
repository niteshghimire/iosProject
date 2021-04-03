//
//  Validation.swift
//  HDApp
//
//  Created by namicollege on 3/13/21.
//  Copyright © 2021 Home. All rights reserved.
//

import UIKit

class Validation: NSObject {
    var status: Bool
    var message: String
    
    override init() {
        self.status = false
        self.message = " "
    }
    init(status:Bool,message:String) {
        self.status = status
        self.message = message
    }

}
