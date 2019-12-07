//
//  ViewController.swift
//  WarCardGame
//
//  Created by rs on 30/11/19.
//  Copyright © 2019 rs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var LeftCard: UIImageView!
    
    @IBOutlet weak var RightCard: UIImageView!
    
    @IBOutlet weak var PlayerScore: UILabel!
    
    @IBOutlet weak var CPUScore: UILabel!
    
    var playerScore = 0
    var cpuScore = 0
    var count = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    
    @IBAction func DealButton(_ sender: Any) {
        let left = Int.random(in: 2...14)
        let right = Int.random(in: 2...14)
        LeftCard.image = UIImage(named: "card\(left)")
        RightCard.image = UIImage(named: "card\(right)")
        
        if left > right {
            playerScore += 1
            PlayerScore.text = String(playerScore)
        }
        else if left < right {
            cpuScore += 1
            CPUScore.text = String(cpuScore)
        }
        count += 1
        if count == 11 {
            LeftCard.image = UIImage(named: "back")
            RightCard.image = UIImage(named: "back")
            count = 0
            playerScore = 0
            cpuScore = 0
            PlayerScore.text = String(playerScore)
            CPUScore.text = String(cpuScore)
        }
    }
    

}

