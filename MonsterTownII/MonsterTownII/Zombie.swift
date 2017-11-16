//
//  Zombie.swift
//  MonsterTownII
//
//  Created by Jeff Ripke on 11/8/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

import Foundation

class Zombie: Monster {
    var walksWithLimp = true
    
    final override func terrorizeTown() {
        if town!.population >= 10 {
            town?.changePopulation(by: -10)
        } else {
            town?.population = 0
        }
        
        super.terrorizeTown()
    }
}
