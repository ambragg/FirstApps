//
//  ElectricBoogaloo.swift
//  FromScratch
//
//  Created by Aimee Bragg on 5/7/15.
//  Copyright (c) 2015 Aimee Bragg. All rights reserved.
//

import UIKit

class ElectricBoogaloo: UIView {
    
    override func didMoveToWindow() {
        
        
        func getRandomColor() -> UIColor {
            
            var randomRed:CGFloat = CGFloat(drand48())
            
            var randomGreen:CGFloat = CGFloat(drand48())
            
            var randomBlue:CGFloat = CGFloat(drand48())
            
            var randomAlpha:CGFloat = CGFloat(drand48())
                
            
            return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: randomAlpha)
        }
        
        
        func getRandomShape() -> UIShape
    
        var rN = arc4random_uniform(100)
        println(rN)
        
        frame.size.width = CGFloat(rN)
        frame.size.height = CGFloat(rN)
        
        layer.cornerRadius = frame.size.width / 2
        
        
        backgroundColor = getRandomColor()
    }


}
