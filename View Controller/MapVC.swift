//
//  MapVC.swift
//  HDApp
//
//  Created by namicollege on 3/13/21.
//  Copyright © 2021 Home. All rights reserved.
//

import UIKit
import MapKit

class MapVC: UIViewController, CLLocationManagerDelegate {
    @IBOutlet weak var mapView: MKMapView!
    var locationManager=CLLocationManager()
    fileprivate func loadMapView(){
        //        let myLocation = CLLocation(latitude:latitude,longitude:longitude)
        //        let span = MKCoordinateSpanMake(1, 0.05)
        //        let region = MKCoordinateRegion(center: myLocation.coordinate, span: span)
        //        mapView.setRegion(region, animated: true)
        self.locationManager.delegate = self
        self.locationManager.requestWhenInUseAuthorization()
        self.mapView.showsUserLocation = true
        self.locationManager.startUpdatingLocation()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadMapView()

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
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print("Updating")
        let span = MKCoordinateSpanMake(0.05, 0.05)
        let region = MKCoordinateRegion(center: locations[0].coordinate, span: span)
        mapView.setRegion(region, animated: true)
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
