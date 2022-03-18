//
//  VerticalProgressView.swift
//  Water Tracker
//
//  Created by Alexander Masztak on 3/18/22.
//

import UIKit

class VerticalProgressView: UIView {
    
    private let progressView: UIProgressView = {
        let progressView = UIProgressView()
        progressView.progress = 0.7
        progressView.translatesAutoresizingMaskIntoConstraints = false
        return progressView
    }()

    override func layoutSubviews() {
        super.layoutSubviews()
        
        addSubview(progressView)
        
        progressView.bounds.size.width = bounds.width
        progressView.bounds.size.height = bounds.height
        progressView.center.x = bounds.midX
        progressView.center.y = bounds.midY
        
        rotateProgressView()
    }
    private func rotateProgressView() {
        progressView.transform = CGAffineTransform(rotationAngle: .pi * -0.5)
    }
}
