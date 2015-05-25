//
//  ViewController.swift
//  TicTacToeLayout
//
//  Created by Aimee Bragg on 5/8/15.
//  Copyright (c) 2015 Aimee Bragg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    // connected buttons for game board
    
    @IBOutlet weak var b1: UIButton!
    
    @IBOutlet weak var b2: UIButton!
    
    @IBOutlet weak var b3: UIButton!
    
    
    @IBOutlet weak var b4: UIButton!
    
    
    @IBOutlet weak var b5: UIButton!
    
    
    @IBOutlet weak var b6: UIButton!
    
    
    @IBOutlet weak var b7: UIButton!
    
    
    @IBOutlet weak var b8: UIButton!
    
    
    @IBOutlet weak var b9: UIButton!
    
    
    // boolean to play game
    var isGameFinished: Bool = false
    
    
    
    var spaces: [[Player?]] = [
        
        // defines gameboard
    
        [nil,nil,nil],
        [nil,nil,nil],
        [nil,nil,nil]
        
        ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


   
    // made the first player to take action player One
    var currentPlayer: Player = .One
    
    
    //  connected restart button for new game
    @IBAction func restartButton(sender: UIButton) {
        
        newGame()
        
    }
    
    
    @IBAction func buttonPressed(sender: TButton) {
      
        // checks to see if game is finished and who is winner
        if isGameFinished == false {
        
            if sender.player != nil { return }
            
            sender.player = currentPlayer
            sender.setNeedsDisplay()
            
            spaces[sender.row][sender.col] = currentPlayer
            
            println(spaces)
            
            checkForWinner()
            
            
    //
    //        if currentPlayer == .One {
    //            currentPlayer = .Two
    //            
    //        } else {
    //            
    //            currentPlayer = .One
    //         
            
            currentPlayer = (currentPlayer == .One) ? .Two : .One
        
        } else {
            println("Sorry, but the game is over")
        }
        
    }
    
    //  sets out all the winning possibilities
    var possibilities = [
            [0,0,0,1,0,2],
            [1,0,1,1,1,2],
            [2,0,2,1,2,2],
            [0,0,1,0,2,0],
            [0,1,1,1,2,1],
            [0,2,1,2,2,2],
            [0,0,1,1,2,2],
            [2,0,1,1,0,2]
        
    ]

    // checks for winner and determines which player won
    func checkForWinner() {
    
        for possibility in possibilities {
            
            let firstSpot = spaces[possibility[0]][possibility[1]]
            let secondSpot = spaces[possibility[2]][possibility[3]]
            let thirdSpot = spaces[possibility[4]][possibility[5]]

            if firstSpot == secondSpot && secondSpot == thirdSpot {
                
                if let winner = firstSpot {
                    
                    println("player \(winner.hashValue + 1) wins")
                    
                    endGame()
                    
                }
                    
            }
            
        }
        
    }
    
    
    func endGame() {
        // Game is now finished
        
        b1.player = nil
        b1.setNeedsDisplay()
        b2.player = nil
        b2.setNeedsDisplay()
        b3.player = nil
        b3.setNeedsDisplay()
        b4.player = nil
        b4.setNeedsDisplay()
        b5.player = nil
        b5.setNeedsDisplay()
        b6.player - nil
        b6.setNeedsDisplay()
        b7.player = nil
        b7.setNeedsDisplay()
        b8.player = nil
        b8.setNeedsDisplay()
        b9.player = nil
        b9.setNeedsDisplay()
        
        
        isGameFinished = true
    }
    
    // checks to see if game is finished
    func newGame() {
        
        isGameFinished = false
        

        spaces = {
           
            [nil,nil,nil],
            [nil,nil,nil],
            [nil,nil,nil]
            
            
        }
        
        }
        
    }

}