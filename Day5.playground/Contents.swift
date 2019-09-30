import UIKit

// MARK: - Writing Functions

func printHelp() {
    let message = """
Welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""
    
    print(message)
}

printHelp()

// MARK: - Accepting Parameters

// print() is a function, and we are sending strings
// to it as parameters.

print("Hello, world!")

// To create a function; give it a name,
// give your parameters a name, colon, and a type

func square(number: Int) {
    print(number * number)
}

square(number: 8)

// MARK: - Returning Values

// functions can recieve and return values
// here, the '-> Int' tells the compiler
// we will return an Int

func square2(number: Int) -> Int {
    return number * number
}

let result = square2(number: 8)
print(result)

// MARK: - Parameter Labels

// functions can have two names, one to use with calling
// the function, and one to be used inside the function

func sayHello(to name: String) {
    print("Hello, \(name)!")
}

// written this way we speak the parameter as 'to name'

// we can call the function this way

sayHello(to: "Shawn")

// MARK: - Omitting Parameter Labels

// the underscore allows us to omit the parameter name
// when being call externally

func greet(_ person: String) {
    print("Hello, \(person)!")
}

greet("Taylor")

// MARK: Default Parameters

// the print function has a default terminator of "\n"
// we can give our function a default by providing a default
// value in the parameter list

func greet2(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}

// called two ways
greet2("Taylor")
greet2("Taylor", nicely: false)

// MARK: - Variadic Functions

// variadiac functions accept any number of parameters.
print("Haters", "gonna", "hate")

// using '...' will give you a variadic parameter

func square3(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

square3(numbers: 1,2,3,4,5)

// MARK: - Writing Throwing Functions

// We can configure our functions to "throw" errors
// by prefixing the return type with "throws"
// then use the "throw" keyword within the function

enum PasswordError: Error {
    case obvious
}

// now for a function that throws

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    
    return true
}

do {
    try checkPassword("password")
    
    // the following line will not execute
    // if the previous 'try' throws
    
    print("Good password")
} catch {
    
    // if the 'try' throws
    // then execution picks up here
    
    print("You can't use that password!")
}

// MARK: - INOUT Parameters

// parameters passed into a function are constants
// and can't be changed
// if you want to change them, use the 'inout' prefix

func doubleInPlace(number: inout Int) {
    number *= 2
}

var myNum = 10
doubleInPlace(number: &myNum)
print(myNum, terminator: "")
