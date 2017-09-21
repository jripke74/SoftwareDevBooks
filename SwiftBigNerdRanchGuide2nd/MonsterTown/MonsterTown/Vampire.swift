//
//  Vampire.swift
//  MonsterTown
//
//  Created by Jeff Ripke on 9/21/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

import Foundation

class Vampire: Monster {
    
    var vampireThralls = [Vampire]()
    
    override func terrorizeTown() {
        town?.changePopulation(by: -1)
        vampireThralls.append(Vampire())
    }
}
