//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    let diceImageArray = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")]
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setRandomDiceNumber()
        
    }
    @IBAction func onRollButtonClicked(_ sender: UIButton) {
        setRandomDiceNumber()
    }
    
    func setRandomDiceNumber(){
        
        //Set Image randome from 0 to 5
        diceImageView1.image = diceImageArray[Int.random(in: 0...5)]
        
        // Does the same just with the array function
        diceImageView2.image = diceImageArray.randomElement()
    }


}

