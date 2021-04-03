//
//  GyroscopeVC.swift
//  HDApp
//
//  Created by namicollege on 3/13/21.
//  Copyright © 2021 Home. All rights reserved.
//

import UIKit
import CoreMotion

class GyroscopeVC: UIViewController {
    let motionManager = CMMotionManager()
    var timer: Timer!

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Gyroscope")
        // Do any additional setup after loading the view.
    }
    @IBAction func btnLogoutAction(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: false)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backVC(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        
    }
    
   
}
