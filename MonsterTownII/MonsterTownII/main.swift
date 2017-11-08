//
//  main.swift
//  MonsterTownII
//
//  Created by Jeff Ripke on 11/8/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

import Foundation

var myTown = Town()
myTown.changePopulation(by: 500)
myTown.printDescription()
let genericMonster = Monster()
genericMonster.town = myTown
genericMonster.terrorizeTown()
