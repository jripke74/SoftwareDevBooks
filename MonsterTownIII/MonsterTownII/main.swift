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
let fredTheZombie = Zombie()
fredTheZombie.town = myTown
fredTheZombie.terrorizeTown()
fredTheZombie.town?.printDescription()
