//
//  FirstTabViewController.swift
//  Water Tracker
//
//  Created by Alexander Masztak on 3/18/22.
//

import UIKit

class FirstTabViewController: UIViewController {
    
    let progressView: VerticalProgressView = {
        let pv = VerticalProgressView()
        pv.translatesAutoresizingMaskIntoConstraints = false
        return pv
    } ()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    private func setupViews() {
        view.addSubview(progressView)
        progressView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        progressView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        progressView.widthAnchor.constraint(equalToConstant: 250).isActive = true
        progressView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
    }

}
