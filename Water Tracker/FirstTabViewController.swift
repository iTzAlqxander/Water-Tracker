//
//  FirstTabViewController.swift
//  Water Tracker
//
//  Created by Alexander Masztak on 4/8/22.
//

import UIKit

class FirstTabViewController: UIViewController {
    
    let userDefaults = UserDefaults.standard
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var setGoal: UITextField!
    @IBOutlet weak var goalLabel: UILabel!
    
    var goal = 0.0
    var StringGoal = " "
    var progress = 0
    var progress2 = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
        sets up the view;
        transforms progressBar
        */
        progress2 = Int(progress*100)
        progressLabel.text = "\(progress2)" + "%"
        
        progressBar.progress = Float(progress)
        progressBar.transform = CGAffineTransform(rotationAngle: .pi / -2)
        progressBar.transform = progressBar.transform.scaledBy(x: 2.96, y: 80)
        progressBar.layer.cornerRadius = 0
        progressBar.layer.sublayers![1].cornerRadius = 0
            
}
    
    @IBAction func setsGoal(_ sender: UIButton) {
        StringGoal = setGoal.text!
        goalLabel.text = StringGoal + " Cu."
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let cupsBack = userDefaults.double(forKey: "Cups")
        let cB = cupsBack/100.0
        let lCupsBack = Double(round(100*cupsBack)/100)
        
        /*
        finds the progress % based on what goal the user inputed
        and what progress the  user inputed
        */
        goal = Double(StringGoal) ?? 0
        let u = lCupsBack * 100.0
        let percentage = u/goal
        let q =  percentage/100.0
        
        
        progressBar.progress = Float(q)
        progressLabel.text = "\(percentage)" + "%"
        
        /*
        Once the user reaches a progress of 100%, alert pops up to reset
        all the progress to start over
        */
        if lCupsBack >= 100{
            let alert = UIAlertController(title: "Congrats!", message: "You have hit your goal!", preferredStyle: .alert)
            let reset = UIAlertAction(title: "Reset Progress", style: .default, handler: {action in
                UserDefaults.resetStandardUserDefaults()
                numbers.removeAll()
            })
            alert.addAction(reset)
            present(alert, animated: true, completion: nil)
        }
    }

}
