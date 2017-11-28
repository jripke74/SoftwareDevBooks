//
//  Zombie.swift
//  MonsterTownII
//
//  Created by Jeff Ripke on 11/8/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

import Foundation

class Zombie: Monster {
    override class var spookyNoise: String {
        return "Brains..."
    }
    var walksWithLimp = true
    private var isFallingApart = false
    
    final override func terrorizeTown() {
        if !isFallingApart {
            town?.changePopulation(by: -10)
        }
        super.terrorizeTown()
    }
}
