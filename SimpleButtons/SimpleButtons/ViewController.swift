//
//  ViewController.swift
//  SimpleButtons
//
//  Created by Aimee Bragg on 5/4/15.
//  Copyright (c) 2015 Aimee Bragg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var firstNumber = ""
    var secondNumber = ""
    
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



