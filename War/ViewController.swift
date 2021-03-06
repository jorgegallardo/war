//
//  ViewController.swift
//  War
//
//  Created by Jorge Gallardo on 7/31/15.
//  Copyright © 2015 Jorge Gallardo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstCardImage: UIImageView!
    @IBOutlet weak var secondCardImage: UIImageView!
    @IBOutlet weak var playRoundButton: UIButton!
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var playerScore: UILabel!
    @IBOutlet weak var enemyScore: UILabel!
    
    var playerScoreTotal = 0
    var enemyScoreTotal = 0
    
    var cards: [String] = ["ace", "card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "jack", "queen", "king"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playRoundTapped(sender: UIButton) {
        func randomCard() -> Int {
            return Int(arc4random_uniform(13))
        }
        
        let firstRandomNumber = randomCard()
        let secondRandomNumber = randomCard()
        
        self.firstCardImage.image = UIImage(named: self.cards[firstRandomNumber])
        self.secondCardImage.image = UIImage(named: self.cards[secondRandomNumber])
        
        if firstRandomNumber > secondRandomNumber {
            playerScoreTotal += 1
            self.playerScore.text = String(playerScoreTotal)
        } else if firstRandomNumber == secondRandomNumber {
            //do nothing
        } else {
            enemyScoreTotal += 1
            self.enemyScore.text = String(enemyScoreTotal)
        }
    }
}

