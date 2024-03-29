//
//  RollViewController.swift
//  Dice
//
//  Created by Jason Schatz on 11/6/14.
//  Copyright (c) 2014 Udacity. All rights reserved.
//

import UIKit

class RollViewController: UIViewController {
    /**
    * Randomly generates an Int from 1 to 6
    */
    func randomDiceValue() -> Int {
        // Generate a random Int32 using arc4Random
        let randomValue = 1 + arc4random() % 6
        
        // Return a more convenient Int, initialized with the random value
        return Int(randomValue)
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let controller = segue.destinationViewController as! DiceViewController
        
        controller.firstValue = randomDiceValue()
        controller.secondValue = randomDiceValue()
    }
    
    @IBAction func rollTheDice() {
        
        performSegueWithIdentifier("rollDice", sender: self)
        
    }
    
    
}

