//
//  RollViewController.swift
//  Dice
//  Pure Segue Method. Control-drag "Roll The Dice" button to Dice View and
//  create a segue Identity "pureSegueRollDice". The result is that
//  you skip the creation of IBAction for the button. The "Model" type of 
//  segue will play the part of Sent Event "Touch Inside Up" and trigger 
//  the transition when the button is pressed. 
//  It is important to implement the "prepareForSegue" to connect the
//  elements related to the targetted segue -- Dice View.
//
//  Above note documented by Lupti for learning purpose.
//  Created by Jason Schatz on 11/6/14.
//  Copyright (c) 2014 Udacity. All rights reserved.
//

import UIKit

class RollViewController: UIViewController {
    
    /**
    * Randomly generates a Int from 1 to 6
    */
    func randomDiceValue() -> Int {
        // Generate a random Int32 using arc4Random
        let randomValue = 1 + arc4random() % 6
        
        // Return a more convenient Int, initialized with the random value
        return Int(randomValue)
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "pureSegueRollDice" {
            let controller = segue.destinationViewController as! DiceViewController
            
            controller.firstValue = self.randomDiceValue()
            controller.secondValue = self.randomDiceValue()
            
        }
    }
    
}

