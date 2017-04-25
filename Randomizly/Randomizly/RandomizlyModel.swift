//
//  RandomizlyModel.swift
//  Randomizly
//
//  Created by Jianfeng Yang on 4/22/17.
//  Copyright © 2017 Jianfeng Yang. All rights reserved.
//

import Foundation

enum GuessAnswer {
    case correct
    case tooLow
    case tooHigh
}

class RandomizlyModel {
    private var number = 0
    private(set) var tries = 0
    
    init() {
        self.newNumber()
    }
    
    func newNumber() {
        tries = 0
        self.number = Int(arc4random_uniform(100)) + 1
    }
    
    func guess(_ guess: Int) -> GuessAnswer {
        self.tries += 1
        if number == guess {
            return .correct
        } else if number > guess {
            return .tooLow
        } else {
            return .tooHigh
        }
    }
}
