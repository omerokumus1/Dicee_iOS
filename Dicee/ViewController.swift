//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dice1Image: UIImageView!
    @IBOutlet weak var dice2Image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func onClickRollButton(_ sender: UIButton) {
        let dices = [getImage("DiceOne"), getImage("DiceTwo"), getImage("DiceThree")
                     , getImage("DiceFour"), getImage("DiceFive"), getImage("DiceSix")]
        
        dice1Image.image = dices[Int.random(in: 0..<dices.count)]
        dice2Image.image = dices[Int.random(in: 0..<dices.count)]
    }
    
    func getImage(_ imageName: String) -> UIImage {
        return UIImage(imageLiteralResourceName: imageName)
    }
    
}

