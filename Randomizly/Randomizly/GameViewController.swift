//
//  GameViewController.swift
//  Randomizly
//
//  Created by Jianfeng Yang on 4/21/17.
//  Copyright © 2017 Jianfeng Yang. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

    @IBOutlet weak var hintLabel: UILabel!
    @IBOutlet weak var inputField: UITextField!
    @IBAction func guess(_ sender: Any) {
        if let input = self.inputField.text, let number = Int(input) {
            let result = self.model.guess(number)
            let tries = self.model.tries
            
            switch result {
            case .correct:
                self.showAlert(title: "Victory!", message: "You guessed the number correctly! Tries needed: \(tries)")
                self.model.newNumber()
                self.inputField.text = ""
                self.hintLabel.isHidden = true
            case .tooHigh:
                self.hintLabel.text = "Lower!"
                self.hintLabel.isHidden = false
            case .tooLow:
                self.hintLabel.text = "Higher!"
                self.hintLabel.isHidden = false
            }
            print("Result: \(result), tries: \(tries)")
        } else {
            print("No input")
            self.showAlert(title: "Error", message: "Please enter a number!")
        }
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hintLabel.isHidden = true
    }
    
    let model = RandomizlyModel()
    
    func showAlert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alertController.addAction(defaultAction)
        present(alertController, animated: true, completion: nil)
    }
    
}
