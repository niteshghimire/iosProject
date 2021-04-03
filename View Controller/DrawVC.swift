//
//  DrawVC.swift
//  HDApp
//
//  Created by namicollege on 3/13/21.
//  Copyright © 2021 Home. All rights reserved.
//

import UIKit

class DrawVC: UIViewController {

    @IBOutlet var btnColor: UIButton!
    @IBOutlet var maxSliderValue: UILabel!
    @IBOutlet var sliderValue: UILabel!
    @IBOutlet var minSliderValue: UILabel!
    @IBOutlet var slider: UISlider!
    @IBOutlet var btnScreenShot: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
         self.minSliderValue.text = "\(self.slider.minimumValue)"
         self.sliderValue.text = "\(Int(self.slider.value))"
         self.maxSliderValue.text = "\(self.slider.maximumValue)"

        // Do any additional setup after loading the view.
    }
   
    @IBAction func scrennshotBtnClicked(_ sender: Any) {
        print("ssclicked")
    }
    @IBAction func btnLogoutAction(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: false)
    }
    
    
    @IBAction func btnColorAction(_ sender: Any) {

        
    }
   
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backVC(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func sliderValueCanged(_ sender: Any) {
        self.sliderValue.text = "\(Int(self.slider.value))"

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
