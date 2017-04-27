//
//  CardsViewController.swift
//  codepath-Tinder
//
//  Created by Utkarsh Sengar on 4/26/17.
//  Copyright © 2017 Area42. All rights reserved.
//

import UIKit

class CardsViewController: UIViewController {

    var originalCenter: CGPoint!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func onPanGesture(_ sender: UIPanGestureRecognizer) {
        let location = sender.location(in: view)
        let translation = sender.translation(in: view)
        
        if sender.state == .began {
            print("Gesture began at: \(location)")
            originalCenter = imageView.center
        } else if sender.state == .changed {
            print("Gesture changed at: \(location)")
            imageView.center = CGPoint(x: originalCenter.x + translation.x, y: originalCenter.y)
        } else if sender.state == .ended {
            
        }
    }
}
