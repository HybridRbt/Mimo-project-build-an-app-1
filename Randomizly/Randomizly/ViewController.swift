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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.randomNumberLabel.text = "10"
    }

}

