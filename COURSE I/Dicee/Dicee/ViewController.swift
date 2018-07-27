//
//  ViewController.swift
//  Dicee
//
//  Created by Kaulitz Guimarães on 15/07/18.
//  Copyright © 2018 Kaulitz Guimarães. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
       self.updateUIImages()
    }
    func updateUIImages()  {
        self.randomDiceIndex1 = Int(arc4random_uniform (6))+1
        self.randomDiceIndex2 = Int(arc4random_uniform (6))+1
        diceImageView1.image = UIImage(named: "dice\(randomDiceIndex1)")
        diceImageView2.image = UIImage(named: "dice\(randomDiceIndex2)")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }

    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
         self.updateUIImages() 
    }
}

