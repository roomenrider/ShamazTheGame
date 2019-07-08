//
//  ViewController.swift
//  ShamazTheGame
//
//  Created by Tom Critchley on 08/07/2019.
//  Copyright © 2019 Tom Critchley. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var label: UILabel!
    //this links our label to the main storyboard
    
    //below are the 4 arrays to create the story prompt. two sections future and past each with a time & prefix
    var timingsfuture = ["one year from now", "tomorrow", "this coming Christmas", "when you're 99 years old", "in the year 2025", "next week", "in two months"]
    var timingsPast = ["a month ago", "two weeks ago", "last year", "new years eve 1999", "last June", "1st of this month", "10 years ago"]
    
    var prefixPromptsfuture = ["Describe yourself", "Your most precious belonging", "What will you eat", "Where will you be", "Who will be Primeminster", "Your job position will you have", "Who will you be dating", "Where will you be living"]
    
    var prefixPromptsPast = ["Where were you", "Most expensive item you bought", "Who did you spend the most time with", "Who was your inspiration", "What would you chanage if you could change somthing from", "Most embarasing moment", "Who was your favorite music artist", "Describe yourself"]
    
    @IBAction func Button1() {
    
    //this links the code to our future button
    let randomFutureIndex = Int(arc4random_uniform(UInt32(timingsfuture.count))) // this selects a number within the range allowed
    let randomFuture = String(timingsfuture[randomFutureIndex]) //this uses the randomFutureIndex number to selcet a value from the array
    
    
    let randomPromptsFutureIndex = Int(arc4random_uniform(UInt32(prefixPromptsfuture.count))) //selecting a number
    let randomPromptsFuture = String(prefixPromptsfuture[randomPromptsFutureIndex]) //uaing the number to select an array elemnt
    
    let futurePrompt = randomPromptsFuture + " "  + randomFuture + "?" //this complies the two arrays secltion to make a random sentance
    
    
    
    label.text = futurePrompt // this will print the the random sentace to the label
    
    }
    
    @IBAction func Button2() {
    //when the past button is pressed it will follow the function code below
    let randomPastIndex = Int(arc4random_uniform(UInt32(timingsPast.count))) // selects random number
    let randomPast = String(timingsPast[randomPastIndex]) //matches random number with array
    
    let randomPromptPastIndex = Int(arc4random_uniform(UInt32(prefixPromptsPast.count)))//selects number
    let randomPromptPast = String(prefixPromptsPast[randomPromptPastIndex]) //compares number to array
    
    let pastPrompt = randomPromptPast + " " + randomPast  + "?" // this joins the arrays together to make a legitmate sentence
    
    
    label.text = pastPrompt   } // this will print the random past sentance
    
    @IBAction func Button3() {
    //linking tht button the the controller
    let randomNumberGenerator = String(arc4random_uniform(UInt32(10)) + 1 ) // this creates a random number the (+1) removes the 0 from the range 0-10
    label.text = randomNumberGenerator // this links the button code with the label
    }
    
}

