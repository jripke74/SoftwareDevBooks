//
//  Town.swift
//  MonsterTown
//
//  Created by Jeff Ripke on 9/20/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

import Foundation

struct Town {
    let population = 5_422
    let numberOfStoplights = 4
    
    func printDescription() {
        print("Population: \(population); number of stoplights: \(numberOfStoplights)")
    }
}
