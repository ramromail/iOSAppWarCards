//
//  ViewController.swift
//  War Cards
//
//  Created by ranjet on 21.5.2020.
//  Copyright © 2020 ranjet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  
  @IBOutlet weak var leftImageView: UIImageView!
  
  @IBOutlet weak var rightImageView: UIImageView!
  
  @IBOutlet weak var playerScore: UILabel!
  
  @IBOutlet weak var computerScore: UILabel!
  
  var playerScoreValue = 0
  var computerScoreValue = 0
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    
  }
  
  
  @IBAction func dealTapped(_ sender: Any) {
    
    let leftNumber = Int.random(in: 2...14)
    let rightNumber = Int.random(in: 2...14)
    
    leftImageView.image = UIImage(named: "card\(leftNumber)")
    rightImageView.image = UIImage(named: "card\(rightNumber)")
    
    if leftNumber > rightNumber {
      playerScoreValue += 1
      playerScore.text = String(playerScoreValue)
    }
    else if leftNumber < rightNumber {
      computerScoreValue += 1
      computerScore.text = String(computerScoreValue)
    }
    
  }
  
  

}

