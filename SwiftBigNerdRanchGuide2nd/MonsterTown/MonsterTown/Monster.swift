//
//  Monster.swift
//  MonsterTown
//
//  Created by Jeff Ripke on 9/20/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

import Foundation

class Monster {
    var town: Town?
    let name = "Monster"
    
    func terrorizeTown() {
        if town != nil {
            print("\(name) is terrorizing a town!")
        } else {
            print("\(name) hasn't found a town to terrorize yet...")
        }
    }
}
