//
//  ThirdTabViewController.swift
//  Water Tracker
//
//  Created by Alexander Masztak on 3/31/22.
//

import UIKit

class ThirdTabViewController: UIViewController {
    
    let userDefaults = UserDefaults.standard

    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var ouncesLabel: UILabel!
    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var slider: UISlider!

    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        slider.transform = CGAffineTransform(rotationAngle: .pi / -2)
        
  
        progressBar.transform = CGAffineTransform(rotationAngle: .pi / -2)
        progressBar.transform = progressBar.transform.scaledBy(x: 2.96, y: 80)
        progressBar.layer.cornerRadius = 0
        progressBar.layer.sublayers![1].cornerRadius = 0
    }
   
        
    @IBAction func sliderSlid(_ sender: UISlider) {
        
        let n = Int(slider.value) % 101
        let m = n * 8
        displayLabel.text = "\(n)" + " C."
        ouncesLabel.text = "\(m)" + " Oz."
        
        let cups = displayLabel.text
        
        let b = Int(slider.value) % 101
        let c = Double(b)
        let d = c/100
        //print(d)
        let x = Double(b) * 3.5
        //print(x)
        let y = 574 - x
        let z = 608 - x
        
        progressBar.progress = Float(d)
        displayLabel.frame.origin = CGPoint (x:96, y:y)
        ouncesLabel.frame.origin = CGPoint (x:96, y:z)
        
        userDefaults.set(cups, forKey: "Cups")
        
    }
    
}
