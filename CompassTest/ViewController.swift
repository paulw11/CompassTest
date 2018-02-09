//
//  ViewController.swift
//  CompassTest
//
//  Created by Paul Wilkinson on 10/2/18.
//  Copyright © 2018 Paul Wilkinson. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mapview: MKMapView!
    
    var compassButton: MKCompassButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.mapview.showsCompass = false  // Hide built-in compass
        
        self.compassButton = MKCompassButton(mapView: mapview)   // Make a new compass
        self.compassButton.compassVisibility = .visible          // Make it visible
        
        mapview.addSubview(self.compassButton) // Add it to the view

        // Position it as required
        
        self.compassButton.translatesAutoresizingMaskIntoConstraints = false
        compassButton.trailingAnchor.constraint(equalTo: self.mapview.trailingAnchor, constant: -12).isActive = true
        compassButton.topAnchor.constraint(equalTo: self.mapview.topAnchor, constant: 12).isActive = true
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

