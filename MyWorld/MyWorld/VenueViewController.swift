//
//  VenueViewController.swift
//  MyWorld
//
//  Created by Aimee Bragg on 5/22/15.
//  Copyright (c) 2015 Aimee Bragg. All rights reserved.
//

import UIKit

class VenueViewController: UIViewController {
    
    
    
    @IBOutlet weak var iconImage: UIImageView!
    
    
            
//    let iconImage = UIImage = iconImage
//            
//    iconImage.layer.cornerRadius = 24
//    
//    iconImage.layer.masksToBounds = true
    
    
    @IBOutlet weak var categoryInfo: UILabel!
    
    @IBOutlet weak var addressInfo: UILabel!
    
    @IBOutlet weak var usersInfo: UILabel!
    
    @IBOutlet weak var checkinsInfo: UILabel!
    
    @IBOutlet weak var tipsInfo: UILabel!
    
    
    
    @IBOutlet weak var hereNowInfo: UILabel!
    

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
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
