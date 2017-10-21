enum TextAlignment {
    case left
    case right
    case center
    case justify
}

var alignment = TextAlignment.justified
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
