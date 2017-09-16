let volunteerCounts = [1, 3, 40, 32, 2, 53, 77, 13]

//func sortAscending(_ i: Int, _ j: Int) -> Bool {
//    return i < j
//}
//let volunteeredsSorted = volunteerCounts.sorted(by: sortAscending)
// this sorts volunteerCounts lowest to highest: [1, 2, 3, 13, 32, 40, 53, 77]

// refactoring above code
//let volunteersSorted = volunteerCounts.sorted(by: {
//    (i: Int, j: Int) -> Bool in
//    return i < j
//})

// refactoring even more, taking advantage of Swift's type inference system
//let volunteeredSorted = volunteerCounts.sorted(by: { $0 < $1 })

// you can even remore the () and by:
let volunteeredSorted = volunteerCounts.sorted { $0 < $1 }