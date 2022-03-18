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

//    var progress: CGFloat {
//        get{
//            progressView.progress
//
//        }
//    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        addSubview(progressView)
        
        let width = bounds.width
        let height = bounds.height
        
        progressView.bounds.size.width = height
        progressView.bounds.size.height = width
        progressView.center.x = bounds.midX
        progressView.center.y = bounds.midY
        
        rotateProgressView()
    }
    private func rotateProgressView() {
        progressView.transform = CGAffineTransform(rotationAngle: .pi * -0.5)
    }
    override var intrinsicContentSize: CGSize{
        get {
            return CGSize(width: progressView.intrinsicContentSize.height, height: progressView.intrinsicContentSize.width)
        }
    }
}
