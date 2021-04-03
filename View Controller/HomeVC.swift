//
//  HomeVC.swift
//  HDApp
//
//  Created by namicollege on 3/13/21.
//  Copyright © 2021 Home. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {
    @IBOutlet var homeView: UIView!
    @IBOutlet var HomeViewLongPressGesture: UILongPressGestureRecognizer!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func btnLogoutAction(_ sender: Any) {
//        self.navigationController?.popToRootViewController(animated: false)
        
        
        let menuVC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MenuVC") as! MenuVC
        menuVC.modalTransitionStyle = .crossDissolve
        menuVC.modalPresentationStyle = .formSheet
        self.present(menuVC, animated: false){
            print("MenuVC Displayed")
        }
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func longPressinHomeArea(_ sender: Any) {
        self.homeView.backgroundColor = #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)
    }
    
    @IBAction func backTouched(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        
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
