import Foundation

enum TextAligment: Int {
    case left
    case right
    case center
    case justify
}
// you can omit the explicit type because it can be infered
//var alignment: TextAligment = TextAligment.left
var alignment = TextAligment.justify

print("Left has raw value \(TextAligment.left.rawValue)")
print("Right has raw value \(TextAligment.right.rawValue)")
print("Center has raw value \(TextAligment.center.rawValue)")
print("Justify has raw value \(TextAligment.justify.rawValue)")
print("The alignment variable has ra value\(alignment.rawValue)")

// switch statements are better for enums
//if alignment == .right {
//    print("We should right-align the text!")
//}
switch alignment {
case .left:
    print("left aligned")
case .right:
    print("right aligned")
case .center:
    print("center aligned")
case .justify:
    print("justified")
// no default case is required if all the cases are used in the enum
}

let myRawValue = 1

if let myalignment = TextAligment(rawValue: myRawValue) {
    // conversion succeeded!
    print("successfully converted \(myRawValue) into a TextAlignment")
} else {
    // conversion failed
    print("\(myRawValue) has no corresponding TextAlignment case")
}
// prints: "successfully converted 1 TextAlignment case"

enum ProgrammingLanguage: String {
    case swift //= "swift"
    case objectiveC = "objective-c"
    case c //= "c"
    case cpp = "c++"
    case java //= "java"
}
let myFavoriteLanguage = ProgrammingLanguage.swift
print("My favorite programming language is \(myFavoriteLanguage.rawValue)")

enum LightBulb {
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

var bulb = LightBulb.on
let ambientTemperature = 77.0

var bulbTemperature = bulb.surfaceTemperature(forAmbientTemperature: ambientTemperature)
print("the bulb's temperature is \(bulbTemperature)")

bulb.toggle()
bulbTemperature = bulb.surfaceTemperature(forAmbientTemperature: ambientTemperature)
print("the bulb's temperature is \(bulbTemperature)")

// Associated Values
enum ShapeDimensions {
    // point has no associated value - it is dimensionless
    case point
    // squaress associated value is the length of one side
    case square(side: Double)
    // rectangle's associated value defines its width and height
    case rectangle(width: Double, height: Double)
    // triangle's associated value define one side
    case triangle(side: Double)
    
    func area() -> Double {
        switch self {
        case .point:
            return 0
        case let .square(side: side):
            return side * side
        case let .rectangle(width: w, height: h):
            return w * h
        case let .triangle(side: side):
            return (side * side) / 2 // not sure if this is the correct way to find area of triangle
        }
    }
    
    func perimeter() -> Double {
        switch self {
        case .point:
            return 0
        case let .square(side: side):
            return side * 4.0
        case let .rectangle(width: w, height: h):
            return (w * 2.0) + (h * 2.0)
        case let .triangle(side: side):
            return side * side + sqrt(side * side + side * side)
        }
    }
}

var squareShape = ShapeDimensions.square(side: 10.0)
var rectShape = ShapeDimensions.rectangle(width: 5.0, height: 10.0)
var triangleShpe = ShapeDimensions.triangle(side: 2)
var pointShape = ShapeDimensions.point

print("square's area = \(squareShape.area())")
print("rectangle's area = \(rectShape.area())")
print("point's area = \(pointShape.area())")
print("triangle's area = \(triangleShpe.area())")
print("square's perimeter = \(squareShape.perimeter())")
print("rectangle's perimeter = \(rectShape.perimeter())")
print("point's perimeter = \(pointShape.perimeter())")
print("triangle's perimeter = \(triangleShpe.perimeter())")

enum FamilyTree {
    case noKnownParents
    indirect case oneKnownParent(name: String, ancestors: FamilyTree)
    indirect case twoKnownParents(fatherName: String, fatherAncestors: FamilyTree,
        motherName: String, motherAncestors: FamilyTree)
}

let fredAncestors = FamilyTree.twoKnownParents (fatherName: "Fred Sr.", fatherAncestors: .oneKnownParent(name: "Beth", ancestors: .noKnownParents), motherName: "Marsha", motherAncestors: .noKnownParents)