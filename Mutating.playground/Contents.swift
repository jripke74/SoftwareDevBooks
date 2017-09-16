func great(name: String, withGreeting greeting: String) -> String {
    return "\(greeting) \(name)"
}
let personalGreeting = great(name: "Jeff", withGreeting: "Hello")
print(personalGreeting)

