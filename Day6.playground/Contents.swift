import UIKit

// MARK: - Closures

// functions can be created and assigned
// to a variable just like any other type

// this effectively creates a function without a name

let driving = {
    print("I'm driving in my car")
}

driving()

// MARK: - Accepting Parameters

let driving2 = { (place: String) in
    print("I'm going to \(place) in me mum's caa.")
}

// parameter labels aren't required when calling
driving2("London")

// MARK: - Returning Values

// return parameters are written before the 'in' keyword

let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

let message = drivingWithReturn("London")
print(message)

// MARK: - Closures as Parameters

let driving3 = {
    print("I'm driving in my car")
}

// now we can write a function that
// accepts a closure "()" and returns nothing "-> Void"

func travel(action: () -> Void) {
    print("I'm getting ready to go")
    action()
    print("I arrived!")
}

// now let's run our function and pass
// in a closure

travel(action: driving3)

// MARK: - Trailing Closure Syntax

// if the last parameter to the function is
// a closure, we can use a 'trailing closure'

travel() {
    print("I'm driving in my car")
}

// you can even omit the parentheses

travel { print("I'm driving in my car") }
