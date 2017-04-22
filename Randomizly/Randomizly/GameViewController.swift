//
//  GameViewController.swift
//  Randomizly
//
//  Created by Jianfeng Yang on 4/21/17.
//  Copyright © 2017 Jianfeng Yang. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

    @IBOutlet weak var inputField: UITextField!
    @IBAction func guess(_ sender: Any) {
        if let input = self.inputField.text, let number = Int(input) {
            print("Input: \(number)")
        } else {
            print("No input")
        }
    
    }
    
}
