import UIKit

// MARK: - Closures, part two

// MARK: - Using Closures as Parameters When They Accept Parameters

// a function that accepts a closure as its parameter
func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}

// used with trailing closure syntax
travel { (place: String) in
    print("I'm going to \(place) in my car.")
}

// MARK: - Using Closures as Parameters when they return values

// returning a String
func travel2(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

travel2 { (place: String) -> String in
    "I'm going to \(place) in my car"
}


// MARK: - Shorthand Parameter Names

// we can remove the parameter name
// because Swift knows its a String

travel2 { place -> String in
    return "I'm going to \(place) in my car"
}

// It knows it returns a String too

travel2 { place in
    return "I'm going to \(place) in my car"
}

// we can omit the return keyword since there
// is only one statement in the closure

travel2 { place in
    "I'm going to \(place) in my car"
}

// now we can even use automatic names
// that Swift provides

travel2 { "I'm going to \($0) in my car" }

// MARK: - Closures with Multiple Parameters

// a closure with two parameters

func travel3(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}

// Now we can use trailing closure syntax
// with automatic variable names

travel3 { "I'm going to \($0) at \($1) miles per hour" }

// MARK: - Returning Closures from Functions

// now for some confusing looking syntax
// passing in a closure and returning a closure

func travel4() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let result = travel4()
result("London")

// also similarly obfuscated
let result2 = travel4()("London")

// MARK: - Capturing Values

// closures capture external values, even if
// they don't exist anymore

// we can modify travel4 to
// demonstrate a captured value

func travel5() -> (String) -> Void {
    var counter = 1

    return {
        print("\(counter): I'm going to \($0)")
        counter += 1
    }
}

let result3 = travel5()
result3("London")
result3("London")
result3("London")
