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

print("Right has a raw value of \(TextAlignment.right.rawValue).")
