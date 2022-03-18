//
//  FirstTabViewController.swift
//  Water Tracker
//
//  Created by Alexander Masztak on 3/18/22.
//

import UIKit

class FirstTabViewController: UIViewController {
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        progressBar.progress = 0.5
        progressBar.transform = CGAffineTransform(rotationAngle: .pi / -2)
        progressBar.transform = progressBar.transform.scaledBy(x: 1.8, y: 55)
        progressBar.layer.cornerRadius = 8
        progressBar.clipsToBounds = true
        progressBar.layer.sublayers![1].cornerRadius = 8
        progressBar.subviews[1].clipsToBounds = true
        
    }


}
