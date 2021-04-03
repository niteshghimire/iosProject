//
//  Util.swift
//  HDApp
//
//  Created by namicollege on 3/13/21.
//  Copyright © 2021 Home. All rights reserved.
//

import UIKit

class Util: NSObject {
    class func validateValue(enteredEmail:String)->Bool{
        let emailFormat = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format:"SELF MATCHES %@ ",emailFormat)
        return emailPredicate.evaluate(with: enteredEmail)
    }

}
