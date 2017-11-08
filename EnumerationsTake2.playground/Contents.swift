enum TextAlignment: Int {
    case left
    case right
    case center
    case justify
}

var alignment = TextAlignment.justify
alignment = .right

//if alignment == .right {
//    print("We should right-align the text.")
//}

// A switch statement would be better
switch alignment {
case .left:
    print("left aligned")
case .right:
    print("right aligned")
case .center:
    print("center aligned")
case .justify:
    print("justified")
}

print("Left has a raw value of \(TextAlignment.left.rawValue).")

let myRawValue = 1
if let myAlignment = TextAlignment(rawValue: myRawValue) {
    print("Sucessfully converted \(myRawValue) into \(myAlignment)")
} else {
    print("Conversion failed: \(myRawValue) has no corresponding TextAlignment case")
}

enum ProgrammingLanguages: String {
    case swift
    case objectiveC = "objectiveC"
    case c
    case cpp = "c++"
    case java
}

let myFavoriteLanguage = ProgrammingLanguages.swift
print("My favorite programming language is \(myFavoriteLanguage.rawValue)")

enum lightBulb {
    case on
    case off
    func surfaceTemperature(forAmbientTemperature ambient: Double) -> Double {
        switch self {
        case .on:
            return ambient + 150.0
        case .off:
            return ambient
        }
    }
    mutating func toggle() {
        switch self {
        case .on:
            self = .off
        case .off:
            self = .on
        }
    }
}
var bulb = lightBulb.on
let ambientTemperature = 77.0
var bulbTemperature = bulb.surfaceTemperature(forAmbientTemperature: ambientTemperature)
print("the bulb's temperature is \(bulbTemperature)")
bulb.toggle()
bulbTemperature = bulb.surfaceTemperature(forAmbientTemperature: ambientTemperature)
print("the bulb's temperature is \(bulbTemperature) and is \(bulb)")

enum ShapeDimensions {
    case point
    case square(side: Double)
    case rectangle(width: Double, height: Double)
    case rightTriangle(side1: Double, side2: Double, side3: Double)
    func area() -> Double {
        switch self {
        case .point:
            return 0
        case let .square(side: side):
            return side * side
        case let .rectangle(width: w, height: h):
            return w * h
        case let .rightTriangle(side1: s1, side2: s2, side3: s3):
            return s1 + s2 + s3
        }
    }
    func perimeter() -> Double {
        switch self {
        case .point:
            return 0
        case let .square(side: side):
            return side * 4
        case let .rectangle(width: w, height: h):
            return (w * 2) + (h * 2)
        case let .rightTriangle(side1: s1, side2: s2, side3: s3):
            return s1 + s2 + s3
        }
    }
}

var squareShape = ShapeDimensions.square(side: 10.0)
var rectShape = ShapeDimensions.rectangle(width: 5.0, height: 10.0)
var pointShape = ShapeDimensions.point
var perimeter = ShapeDimensions.rectangle(width: 2, height: 2)
print("square's area = \(squareShape.area()) and is a \(squareShape)")
print("rectangle's area = \(rectShape.area())")
print("points area = \(pointShape.area())")
print("The perimeter of a square: \(perimeter.perimeter())")

enum FamilyTree {
    case noKnownParents
    indirect case oneKnownParent(name: String, ancestors: FamilyTree)
    indirect case twoKnownParents(fatherName: String, fatherAncestors: FamilyTree, motherName: String, motherAncestors: FamilyTree)
}
let fredAncestors = FamilyTree.twoKnownParents(fatherName: "Fred Sr.", fatherAncestors: .oneKnownParent(name: "Beth", ancestors: .noKnownParents), motherName: "Marsha", motherAncestors: .noKnownParents)
