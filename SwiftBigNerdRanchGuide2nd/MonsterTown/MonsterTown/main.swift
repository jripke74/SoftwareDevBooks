//
//  main.swift
//  MonsterTown
//
//  Created by Jeff Ripke on 9/19/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

import Foundation

var myTown = Town()
myTown.changePopulation(by: 500)
//print("Population: \(myTown.population), number of stoplights: \(myTown.numberOfStoplights)")
//myTown.printDescription()
//let genericMonster = Monster()
//genericMonster.town = myTown
//genericMonster.terrorizeTown()
let fredTheZombie = Zombie()
fredTheZombie.town = myTown
fredTheZombie.terrorizeTown()
fredTheZombie.town?.printDescription()
let theVampire = Vampire()
theVampire.town = myTown
theVampire.terrorizeTown()
theVampire.town?.printDescription()
theVampire.terrorizeTown()
theVampire.town?.printDescription()
theVampire.terrorizeTown()
theVampire.town?.printDescription()
print(theVampire.vampireThralls.count)
