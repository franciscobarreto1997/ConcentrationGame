//
//  ViewController.swift
//  ConcentrationGame
//
//  Created by Francisco Barreto on 21/10/18.
//  Copyright © 2018 Francisco Barreto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var flipCount = 0 {
        didSet {
            flipsLabel.text = "Flips: \(flipCount)"
        }
    }
    
    var emojiArray = ["👻","🎃","👻","🎃"]
    
    @IBOutlet var cards: [UIButton]!
    

    @IBOutlet weak var flipsLabel: UILabel!
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cards.index(of: sender) {
           flipCard(withEmoji: emojiArray[cardNumber], on: sender)
        } else {
            print("Chosen card was not in the cards array")
        }
    }
    
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        if button.currentTitle == emoji {
            button.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
            button.setTitle("", for: .normal)
        } else {
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            button.setTitle(emoji, for: .normal)
        }
    }


}

