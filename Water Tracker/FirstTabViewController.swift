//
//  FirstTabViewController.swift
//  Water Tracker
//
//  Created by Alexander Masztak on 3/18/22.
//

import UIKit

class FirstTabViewController: UIViewController {
    
    let userDefaults = UserDefaults.standard
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    var progress = 0
    var progress2 = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        progress2 = Int(progress*100)
        progressLabel.text = "\(progress2)" + "%"
        
        progressBar.progress = Float(progress)
        progressBar.transform = CGAffineTransform(rotationAngle: .pi / -2)
        progressBar.transform = progressBar.transform.scaledBy(x: 2.96, y: 80)
        progressBar.layer.cornerRadius = 0
        progressBar.layer.sublayers![1].cornerRadius = 0

        //progress2 = cupsBack
            
}
    override func viewWillAppear(_ animated: Bool) {
        let cupsBack = userDefaults.double(forKey: "Cups")
        //print(cupsBack)
        let cB = cupsBack/100.0
        progressBar.progress = Float(cB)
        
        let lCupsBack = Double(round(100*cupsBack)/100)
        progressLabel.text = "\(lCupsBack)" + "%"
    }
}
