import UIKit

// MARK: - Protocols

// Protocols describe what properties and methods
// a thing must have.

protocol Identifiable {
    var id: String { get set }
}

// Now create something that conforms
// to that protocol

struct User: Identifiable {
    var id: String
}

// now we can write a func
// that accepts anything that conforms
// to the protocol

func displayID(thing: Identifiable) {
    print("My ID is \(thing.id)")
}

let user = User(id: "testingString")

displayID(thing: user)

// MARK: - Protocol Inheritance

// protocols can inherit from other protocols

protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

// These can now be combined into one protocol

protocol Employss: Payable, NeedsTraining, HasVacation { }

// MARK: - Extensions

// an extension allows you to add new methods to existing types

extension Int {
    func squared() -> Int {
        return self * self
    }
}

let number = 8
number.squared()

// stored properties are not allowed
// in extensions. You must use computed properties

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}

8.isEven

// MARK: - Protocol Extensions

// protocol extensions allow you to describe the methods
// that a Type must have, and also provides the code for
// the method

let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

// both Arrays and Sets conform to a protocol called 'Collection'.
// So we can extend that protocol to add a method that works
// on both Arrays and Sets
extension Collection {
    func summarize() {
        print("There are \(count) of us: ")
        
        for name in self {
            print(name)
        }
    }
}

pythons.summarize()
beatles.summarize()

// MARK: - Protocol-Oriented Programming

// protocol extensions provide default implementations for our
// own protocol methods.

protocol Identifiable2 {
    var id: String { get set }
    func identify()
}

extension Identifiable2 {
    func identify() {
        print("My ID is \(id).")
    }
}

struct User2: Identifiable2 {
    var id: String
}

let twostraws = User2(id: "twostraws")
twostraws.identify()

