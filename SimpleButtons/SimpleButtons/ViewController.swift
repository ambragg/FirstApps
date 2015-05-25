//
//  ViewController.swift
//  SimpleButtons
//
//  Created by Aimee Bragg on 5/4/15.
//  Copyright (c) 2015 Aimee Bragg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // makes first number and second number to be pressed part of the calculation
    var firstNumber = ""
    var secondNumber = ""
    
    //  makes the operation button that is pressed the current operation
    var currentOperation  = ""
    
    
    @IBOutlet weak var resultsLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // determines the calculation based on operator pressed and displays the result
    @IBAction func operatorPressed(sender: UIButton) {
        
        let operation = sender.currentTitle!
        
        if operation != "=" {
            
            currentOperation = operation
            
        } else {
            
            switch currentOperation {
                
            case "+":
                
                let value = firstNumber.toInt()! + secondNumber.toInt()!
                println("\(firstNumber) \(currentOperation) \(secondNumber) = \(value)")
                
                resultsLabel.text = "\(value)"
                
            case "-":
                
                let value = firstNumber.toInt()! - secondNumber.toInt()!
                println("\(firstNumber) \(currentOperation) \(secondNumber) = \(value)")
                
                resultsLabel.text = "\(value)"
                
            case "*":
                
                let value = firstNumber.toInt()! * secondNumber.toInt()!
                println("\(firstNumber) \(currentOperation) \(secondNumber) = \(value)")
                
                resultsLabel.text = "\(value)"
                
            case "/":
                
                let value = Double(firstNumber.toInt()!) / Double(secondNumber.toInt()!)
                println("\(firstNumber) \(currentOperation) \(secondNumber) = \(value)")
                
                resultsLabel.text = "\(value)"
                
                
            case "=":
                println("run equation")
                
                
            default :
                println("blah")
                
            }
            
            firstNumber = ""
            secondNumber = ""
            currentOperation = ""
            
        }
    
    
    }
    
    // determines if an operator has been pressed to choosed which numbers to calculate
    @IBAction func pressedButton1(sender: UIButton) {
        
        let number = sender.currentTitle!
        
        if currentOperation.isEmpty {
            firstNumber += number
            
        } else {
            
            secondNumber += number
        }
        
        
        
        
        println("Pressed Button " + sender.currentTitle!)
        
        resultsLabel.text = sender.currentTitle!
        
        
    }

}



