import UIKit

// MARK: - Creating Structs

struct Sport {
    var name: String // variables inside structs are
                     // called 'stored properties'
}

// create and use an instance of Sport
var tennis = Sport(name: "Tennis")
print(tennis.name)

// variables can be changed
tennis.name = "Lawn Tennis"
print(tennis.name)

// MARK: - Computed Properties

struct Sport2 {
    var name: String
    var isOlympicSport: Bool
    
    var olympicStatus: String { // computed property
        if isOlympicSport {
            return "\(name) is an Olympic sport."
        } else {
            return "\(name) is not an Olympic sport."
        }
    }
}

let chessBoxing = Sport2(name: "Chessboxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)

// MARK: - Property Observers

struct Progress {
    var task: String
    var amount: Int {
        didSet {        // property observer
            print("\(task) is now \(amount)% complete.")
        }
    }
}

var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100

// the 'willSet' can be used to perform
// an action before the property changes

// MARK: - Methods

// a function inside a struct is called a 'method'

struct City {
    var population: Int
    
    func collectTaxes() -> Int {
        return population * 1_000
    }
}

let london = City(population: 9_000_000)
london.collectTaxes()

// MARK: - Mutating Methods

// "If a struct has a variable property but the instance of the struct was
// created as a constant, that property can’t be changed –
// the struct is constant, so all its properties are also constant
// regardless of how they were created."

// when you want to change a property, use the 'mutating' keyword

struct Person {
    var name: String
    
    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}

// Swift will only allow that method to be called on Person instances
// that are variables.

var person = Person(name: "Ed")
person.makeAnonymous()

// MARK: - Properties and Methods of Strings

let string = "Do or do not, there is no try."

print(string.count) // number of characters in string

// if string starts with specific characters
print(string.hasPrefix("Do"))

// uppercase a string
print(string.uppercased())

// sort into an array
print(string.sorted())

// MARK: - Properties and Methods of Arrays

// Arrays are also structs, with their own methods and properties

var toys = ["Woody"]

// number of items
print(toys.count)

// add and item to the array
toys.append("Buzz")

// locate and item in the array
toys.firstIndex(of: "Buzz")

// they can be sorted
print(toys.sorted())

// you can remove items
toys.remove(at: 0)
