//
//  ViewController.swift
//  Concentration Copy
//
//  Created by Hieu Pham on 12/24/19.
//  Copyright © 2019 Hieu Pham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var flipCount = 0 {
        didSet{
            flipCountLabel.text = "Flips: \(flipCount)"
        }
    }
    @IBOutlet weak var flipCountLabel: UILabel!
    @IBOutlet var cardButtons: [UIButton]!
    
    var emojiChoices = ["👻", "🎃", "👻", "🎃"]
    
    @IBAction func touchCard(_ sender: UIButton){
        flipCount += 1
        if let cardNumber = cardButtons.firstIndex(of: sender) {
            print ("cardNumber = \(cardNumber)")
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        } else {
            print("bad card")
        }
    }
    
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        print("flipCard(withEmoji: \(emoji))")
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        } else {
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
    
    
}

