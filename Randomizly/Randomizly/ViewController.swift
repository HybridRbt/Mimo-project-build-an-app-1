//
//  ViewController.swift
//  Randomizly
//
//  Created by Jianfeng Yang on 4/19/17.
//  Copyright © 2017 Jianfeng Yang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var randomNumberLabel: UILabel!
    @IBAction func newRandomNumber(_ sender: Any) {
        self.number = Int(arc4random_uniform(6)) + 1
        self.randomNumberLabel.text = "\(self.number)"
        self.setBackgroundColorRandomly()
    }
    
    var number = 10
    var colorArray = [UIColor.red, UIColor.green, UIColor.blue]
    
    func getRandomColorIndex() -> Int {
        return Int(arc4random_uniform(3)) // return 0, 1, 2 randomly
    }
    
    func setBackgroundColorRandomly() {
        let colorIndex = getRandomColorIndex()
        self.view.backgroundColor = colorArray[colorIndex]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //self.view.backgroundColor = UIColor.red
        self.newRandomNumber(self)
        self.setBackgroundColorRandomly()
    }

}

