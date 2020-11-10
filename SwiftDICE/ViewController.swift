//
//  ViewController.swift
//  SwiftDICE
//
//  Created by Caleb Jackson on 10/13/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var diceImageView: UIImageView!
    @IBOutlet var criticalLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonGotPressed()
    {
        rollDice()
    }
    
    func rollDice()
    {
        print("We rollin")
        
        let rolledNumber = Int.random(in: 1...20)
        
        let imageName="dice\(rolledNumber)"
        
        diceImageView.image = UIImage(named: imageName)
        
        if (imageName == "dice1")
        {
            criticalLabel.text = "Crit Fail"
        
        }
        else if (imageName == "dice20")
        {
            criticalLabel.text = "Crit Success!"
        }
        else
        {
            criticalLabel.text = "yeehaw"
        }
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        rollDice()
    }
    
}

