//
//  DraggableImageView.swift
//  codepath-Tinder
//
//  Created by Bhagat, Puneet on 4/26/17.
//  Copyright © 2017 Area42. All rights reserved.
//

import UIKit

class DraggableImageView: UIView {
    
    var originalCenter: CGPoint!
    
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    
    var image: UIImage? {
        get { return imageView.image }
        set { imageView.image = newValue }
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        
        initSubviews()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        initSubviews()
    }
    
    func initSubviews() {
        // standard initialization logic
        let nib = UINib(nibName: "DraggableImageView", bundle: nil)
        nib.instantiate(withOwner: self, options: nil)
        contentView.frame = bounds
        addSubview(contentView)
        
            
        // custom initialization logic
        
    }
    
    @IBAction func onPan(_ sender: UIPanGestureRecognizer) {
        let defaultRotationAngle: CGFloat = 5
        let defaultRotationAngleInRadians = defaultRotationAngle * .pi / 180
        
        let location = sender.location(in: self)
        let translation = sender.translation(in: self)
        let velocity = sender.velocity(in: self)
        
        if sender.state == .began {
            print("Gesture began at: \(location)")
            originalCenter = sender.view?.center
        } else if sender.state == .changed {
            print("Gesture changed at: \(location)")

            if location.y <= originalCenter.y {
                let transform = CGAffineTransform(rotationAngle: CGFloat(defaultRotationAngleInRadians) * translation.x/100.0)
                self.transform = transform
                sender.view?.center = CGPoint(x: originalCenter.x + translation.x, y: originalCenter.y)
            } else {
                let transform = CGAffineTransform(rotationAngle: CGFloat(-defaultRotationAngleInRadians) * translation.x/100.0)
                self.transform = transform
                sender.view?.center = CGPoint(x: originalCenter.x + translation.x, y: originalCenter.y)
            }
            
            
            sender.view?.center = CGPoint(x: originalCenter.x + translation.x, y: originalCenter.y)
        } else if sender.state == .ended {
            
        }
    
    }
    
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
}
