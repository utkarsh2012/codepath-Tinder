//
//  CardsViewController.swift
//  codepath-Tinder
//
//  Created by Utkarsh Sengar on 4/26/17.
//  Copyright © 2017 Area42. All rights reserved.
//

import UIKit

class CardsViewController: UIViewController {

    
    @IBOutlet weak var customImageView: DraggableImageView!
    
    var originalCenter: CGPoint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        //customImageView = DraggableImageView(frame: CGRect(x: 20, y: 20, width: 304, height: 304))
        customImageView.image = UIImage(named: "ryan")
        //view.addSubview(customImageView)
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

}
