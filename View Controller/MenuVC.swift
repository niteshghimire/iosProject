//
//  MenuVCViewController.swift
//  HDApp
//
//  Created by namicollege on 4/3/2564 BE.
//  Copyright © 2564 BE Home. All rights reserved.
//

import UIKit

class MenuVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = #colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func btnBackAction(_ sender: Any) {
        self.dismiss(animated: false) {
            print("MenuVC Dismissed")
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
