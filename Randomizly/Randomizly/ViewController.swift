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
    }
    
    var number = 10
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

}

