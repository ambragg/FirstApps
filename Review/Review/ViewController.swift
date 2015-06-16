//
//  ViewController.swift
//  Review
//
//  Created by Aimee Bragg on 6/16/15.
//  Copyright (c) 2015 Aimee Bragg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // if user = nil
        
        let loginStoryboard = UIStoryboard(name: "Login", bundle: nil)
        
        let loginVC = loginStoryboard.instantiateInitialViewController() as! UIViewController
        
        presentViewController(loginVC, animated: true, completion: nil)
        
       
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

