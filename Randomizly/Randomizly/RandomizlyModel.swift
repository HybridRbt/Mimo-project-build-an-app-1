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
    
    init() {
        self.newNumber()
    }
    
    func newNumber() {
        self.number = Int(arc4random_uniform(6)) + 1
    }
    
    func guess(_ guess: Int) -> Bool {
        return self.number == guess 
    }
}
