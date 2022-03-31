//
//  ThirdTabViewController.swift
//  Water Tracker
//
//  Created by Alexander Masztak on 3/31/22.
//

import UIKit

class ThirdTabViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()

        slider.transform = CGAffineTransform(rotationAngle: .pi / -2)
                
    }
    


}
