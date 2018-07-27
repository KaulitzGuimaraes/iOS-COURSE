//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Kaulitz Guimarães on 15/07/18.
//  Copyright © 2018 Kaulitz Guimarães. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var appTitle: UILabel!
    @IBOutlet weak var ball: UIImageView!
    @IBOutlet weak var askButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       self.appTitle.text = "Ask me anything ..."
       self.updateImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func askMe(_ sender: UIButton) {
        self.updateImage()
    }
    func updateImage()  {
         self.ball.image = UIImage(named: self.randImage())
    }
    func randImage() -> String  {
        let randImageNumber : Int = self.randNumber()
        let ballName = "ball\(randImageNumber)"
        return ballName
    }
    func randNumber()-> Int{
        return ( Int(arc4random_uniform(4)) + 1 )
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateImage()
    }

}

