//
//  Zombie.swift
//  MonsterTown
//
//  Created by Jeff Ripke on 9/20/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

import Foundation

class Zombie: Monster {
    let walksWithLimp = true
    
    final override func terrorizeTown() {
        if (town?.population)! > 10 {
            town?.changePopulation(by: -10)
            super.terrorizeTown()
        } else {
            town?.population = 0
            super.terrorizeTown()
        }
        
    }
}
