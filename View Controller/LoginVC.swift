//
//  LoginVC.swift
//  HDApp
//
//  Created by namicollege on 3/13/21.
//  Copyright © 2021 Home. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var textEmail: UITextField!
    @IBOutlet weak var textPassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textEmail.text = "a@a.com"
        self.textPassword.text = "A"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func registerTouched(_ sender: UIButton) {
        print("Register")
        let registerVC=UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "RegisterVC") as! RegisterVC
        self.navigationController?.pushViewController(registerVC, animated: true)
    }
    
     @IBAction func loginTouched(_ sender: Any) {
        print("Login Clicked")
        let email = self.textEmail.text
        let password = self.textPassword.text
        //storing username and password to use
        let user = User.init(email:email,password:password)
        //validating the users stored by calling validate function
        let validate = user.validate()
        if validate.status{
            let tabBarController=UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "TabBarController") as! TabBarController
            self.navigationController?.pushViewController(tabBarController, animated: true)
        }
        else{
            print("Validation fail \(validate.message)")
        }
        
        
    }
    /*
     // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
