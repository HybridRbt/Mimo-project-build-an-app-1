//
//  ViewController.swift
//  Randomizly
//
//  Created by Jianfeng Yang on 4/19/17.
//  Copyright © 2017 Jianfeng Yang. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    var backgroundColorArray = [UIColor.cyan, UIColor.purple, UIColor.red]
    var backgroundColorIndex = 0
    var timer = Timer()
    
    func setTimer() {
        self.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: (#selector(self.updateBackground)), userInfo: nil, repeats: true)
    }
    
    func updateBackground() {
        self.view.backgroundColor = self.backgroundColorArray[backgroundColorIndex]
        backgroundColorIndex += 1
        if backgroundColorIndex > 2 {
            backgroundColorIndex = 0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTimer()
    }
}

