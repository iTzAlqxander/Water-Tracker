//
//  ThirdTabViewController.swift
//  Water Tracker
//
//  Created by Alexander Masztak on 3/31/22.
//

import UIKit

var numbers: [Double] = []

class ThirdTabViewController: UIViewController {
    
    let userDefaults = UserDefaults.standard
    var a = 0.0
    var num = 0.0
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var ouncesLabel: UILabel!
    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var slider: UISlider!

    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        //Transforming  the slider and progress bar
        slider.transform = CGAffineTransform(rotationAngle: .pi / -2)
        progressBar.transform = CGAffineTransform(rotationAngle: .pi / -2)
        progressBar.transform = progressBar.transform.scaledBy(x: 2.96, y: 80)
        progressBar.layer.cornerRadius = 0
        progressBar.layer.sublayers![1].cornerRadius = 0
        
        
    }
   
        
    @IBAction func sliderSlid(_ sender: UISlider) {
        
        /*
        n = cups
        m = ounces (cups converted)
        */
        let n = Int(slider.value) % 101
        let m = n * 8
        
        /*
        displays cups & ounces in labels
        */
        displayLabel.text = "\(n)" + " C."
        ouncesLabel.text = "\(m)" + " Oz."
        
        /*
        gets the slider value and converts it to a double;
        need to divide c by 100 (slider value in double form)
        because the slider min & max is 0-1;
        changes the y-coordinate of labels so that they
        move depending w/ the slider, depending on what the value
        of the slider is
        */
        let b = Int(slider.value) % 101
        let c = Double(b)
        num = c/100
        let x = Double(b) * 3.5
        
        let y = 574 - x
        let z = 608 - x
        
        progressBar.progress = Float(num)
        displayLabel.frame.origin = CGPoint (x:96, y:y)
        ouncesLabel.frame.origin = CGPoint (x:96, y:z)
        
        /*
        takes cups (n), which was declared on line 43,
        and turns it into a double as I want to transfer a double
        through the userDefaults to get an accurate %
        */
        a = Double(n)
        
    }
    @IBAction func addButton(_ sender: UIButton) {
        /*
        appends to an array containing all the numbers added by the
        user;
        sums up the array and puts it into userDefaults
        */
        numbers.append(a)
        let sum = numbers.reduce(0, +)
        userDefaults.set(sum, forKey: "Cups")
        }
        
    override func viewWillAppear(_ animated: Bool) {
        /*
        all of this just sets the view back to an unedited
        original version
        */
        progressBar.progress = 0
        slider.value = 0
        displayLabel.text = "0 C."
        ouncesLabel.text = "0 Oz."
        
        displayLabel.frame.origin = CGPoint (x:96, y:574)
        ouncesLabel.frame.origin = CGPoint (x:96, y:608)
    }
    
}
