import UIKit

// MARK: - Creating Classes

// five key differences between structs and classes

// MARK: - #1.
//      You must create your own initializer. There is no
//      free memberwise initializer like in structs.

class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

let poppy = Dog(name: "Poppy", breed: "Poodle")

// MARK: - #2. Class Inheritance

// You can create a new class based on
// an existing class and inherit the super class's
// properties and methods

// Here we create a new sub-class based on the Dog class

// and we can give this new sub-class its own init

class Poodle: Dog {
    init(name: String) {
        // calling super.init() is required
        super.init(name: name, breed: "Poodle")
    }
}

// MARK: - Overriding Methods

// a parent method can be overriden

class Dog2 {
    func makeNoise() {
        print("Woof!")
    }
}

class Poodle2: Dog2 {
    override func makeNoise() {
        print("Yip!")
    }
}

let poppy2 = Poodle2()
poppy2.makeNoise()

// MARK: - Final Classes

// the 'final' keyword prevents a developer
// from inheriting from your class

final class Dog3 {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

// MARK: - Copying Objects

// Structs and Classes also differ in how
// they are copied.
// When structs are copied, you get two seperate things.
// When classes are copied, the copy is a reference to the original.

class Singer {
    var name = "Taylor Swift"
}

var singer = Singer()
print(singer.name)

var singerCopy = singer
singerCopy.name = "Justin Bierber"

print(singer.name)

// This behavior would not happen with a struct

struct Singer2 {
    var name = "Taylor Swift"
}

var singer2 = Singer2()
print(singer2.name)

var singer2Copy = singer2
singer2Copy.name = "Eddie Van Halen"

print(singer2.name)
print(singer2Copy.name)

// MARK: - Deinitializers

// classes get deinitializers, used when the
// code that's ran when the instance is destroyed.

class Person {
    var name = "John Doe"
    
    init() {
        print("\(name) is alive!")
    }
    
    deinit {
        print("\(name) is no more!\n")
    }
    
    func printGreeting() {
        print("Hello, I'm \(name)")
    }
}

for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}

// Mark: - Mutability

// variables inside a constant struct cannot be changed
// the 'mutating' keyword is required on methods
// that wish to change those variables

// However, classes do not require the 'mutating' keyword
// when changing variable properties

class Singer3 {
    var name = "Taylor Swift"
    // make property a 'let' constant to prevent change
}

let taylor = Singer3()      // a constant instance
taylor.name = "Ed Sheeran"  // can change the variable though
                            // because its a class
print(taylor.name)
