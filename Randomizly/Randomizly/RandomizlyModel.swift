//
//  RandomizlyModel.swift
//  Randomizly
//
//  Created by Jianfeng Yang on 4/22/17.
//  Copyright © 2017 Jianfeng Yang. All rights reserved.
//

import Foundation

class RandomizlyModel {
    private var number = 0
    private(set) var tries = 0
    
    init() {
        self.newNumber()
    }
    
    func newNumber() {
        self.number = Int(arc4random_uniform(6)) + 1
    }
    
    func guess(_ guess: Int) -> Bool {
        self.tries += 1
        return self.number == guess
    }
}
