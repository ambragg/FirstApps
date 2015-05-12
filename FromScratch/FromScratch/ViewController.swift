//
//  ViewController.swift
//  FromScratch
//
//  Created by Aimee Bragg on 5/7/15.
//  Copyright (c) 2015 Aimee Bragg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        

        
        
    }

    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        
        for touch in touches as! Set<UITouch> {
            
            let location = touch.locationInView(view)
            
            println("x = \(location.x) and y = \(location.y)")
            
            var circle = ElectricBoogaloo()
            view.addSubview(circle)
            circle.center = location
            
            circle.transform = CGAffineTransformMakeRotation(360)
            

        }
        
    
    }

}

//Normal mode

//  Make box a circle
//  Randomize the circle size (width will the same as height)
//  Randomize the color of the circle
//  Randomize the alpha of the circle

//Middle mode

//Transition to alpha 0 after 1 second



//Hard mode

//  Randomize rotation of box
//  Randomize whether it is round or not
//  Randomize between full circle -> rounded square -> square



