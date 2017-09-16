var volunteerCounts = [1, 3, 40, 32, 2, 53, 77, 13]

// Bronze Challenge
volunteerCounts.sort { (i, j) in i < j }

// Functions as return types
//func makeTownGrand() -> (Int, Int) -> Int {
//    func buildRoads(byAddingLights lights: Int, toExistingLights existingLights: Int) -> Int {
//        return lights + existingLights
//    }
//    return buildRoads
//}
//var stoplights = 4
//let townPlanByAddingLightsToExistingLights = makeTownGrand()
//stopLights = townPlanByAddingLightsToExistingLights(4, stopLights)

// Functions as arguments
func makeTownGrand(withBudget budget: Int, condition: (Int) -> Bool) -> ((Int, Int) -> Int)? {
    if condition(budget) {
        func buildRoads(byAddingLights lights: Int, toExistingLights existingLights: Int) -> Int {
            return lights + existingLights
        }
        return buildRoads
    } else {
        return nil
    }
}

func evaluate(budget: Int) -> Bool {
    return budget > 10_000
}

var stoplights = 4

if let townPlanByAddingLightsToExsistingLights = makeTownGrand(withBudget: 1_000, condition: evaluate) {
    stoplights = townPlanByAddingLightsToExsistingLights(4, stoplights)
}

if let newTownPlanByAddingLightsToExistingLights = makeTownGrand(withBudget: 10_500, condition: evaluate) {
    stoplights = newTownPlanByAddingLightsToExistingLights(4, stoplights)
}
print("Knowhere has \(stoplights) stoplights.")

func makePopulationTracker(forInitialPopulation population: Int) -> (Int) -> Int {
    var totalPopulation = population
    func populationTracker(growth: Int) -> Int {
        totalPopulation += growth
        return totalPopulation
    }
    return populationTracker
}

var currentPopulation = 5_422
let growBy = makePopulationTracker(forInitialPopulation: currentPopulation)
growBy(500)
growBy(500)
growBy(500)
currentPopulation = growBy(500) // currentPopulation is now 7422
let anotherGrowBy = growBy
anotherGrowBy(500) // closures are reference types
var bigCityPopulation = 4_061_981
let bigCityGrowBy = makePopulationTracker(forInitialPopulation: bigCityPopulation)
currentPopulation
let precinctPopulations = [1244, 2021, 2157]
// estimates future populations
let projectedPopulations = precinctPopulations.map {
    (population:Int) -> Int in
    return population * 2
}
projectedPopulations // 2488, 4042, 4314

// shorten the above (gold challenge):
let projectedPopulationsTakeTwo = precinctPopulations.map { $0 * 2 }
projectedPopulationsTakeTwo

// abstracts populations over 4000
let bigProjections = projectedPopulations.filter {
    (projection: Int) -> Bool in
    return projection > 4000
}
bigProjections // 4042, 4314

// shorten the above (gold challenge):
let bigProjectionsTakeTwo = projectedPopulations.filter { $0 > 4000 }
bigProjectionsTakeTwo // 4042, 4314

// reduce projectedPopulation array to a single value
let totalProjection = projectedPopulations.reduce(0) {
    (accumulatedProjection: Int, precinctProjection: Int) -> Int in
    return accumulatedProjection + precinctProjection
}
totalProjection // 10844

// shorten the above to (gold challenge):
let totalProjectionTakeTwo = projectedPopulations.reduce(0) { $0 + $1 }
totalProjection // 10844