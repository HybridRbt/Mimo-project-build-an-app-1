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
            let correct = self.model.guess(number)
            let tries = self.model.tries
            print("Correct: \(correct), tries: \(tries)")
        } else {
            print("No input")
            self.showAlert(title: "Error", message: "Please enter a number!")
        }
    
    }
    
    let model = RandomizlyModel()
    
    func showAlert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alertController.addAction(defaultAction)
        present(alertController, animated: true, completion: nil)
    }
    
}
