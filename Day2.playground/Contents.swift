import UIKit

// Arrays

let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]

beatles[1]

// Sets

let colors = Set(["red", "green", "blue"])
let colors2 = Set(["red", "green", "blue", "red", "blue"])

colors2 // duplicates are ignored in a Set collection

// Tuples

var name = (first: "Taylor", last: "Swift")
name.0
name.first

// Arrays vs Sets vs Tuples

// Use a tuple for fix collection or related values where each item has a precise position or name

let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville")

// Use an array for a collection of values that can contain duplicates, or if the order matters

let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]

// Use Sets if you need a collection of values that must be unique or you need quick lookups

let set = Set(["aardvark", "astronaut", "azalea"])

// Dictionary

// Dictionaries allow you to access values using any type you like, rather than but an integer as arrays do

let heights = ["Taylor Swift": 1.78, "Ed Sheeran": 1.73]
heights["Taylor Swift"]

let favoriteIceCream = ["Paul": "Chocolate", "Sophie": "Vanilla"]

favoriteIceCream["Paul"]
favoriteIceCream["Charlotte"] // nil - key doesn't exist

favoriteIceCream["Charlotte", default: "Unknown"] // we can define the result if key isn't found

// Creating empty collections

var teams = [String: String]() // empty dictionary
teams["Paul"] = "Red" // assign a key:value to previously empty dictionary

//var results = [Int]() // empty array

var words = Set<String>()   // use angle brackets for sets
var numbers = Set<Int>()    // use angle brackets for sets

// arrays and dictionaries can be created with angle brackets too
var scores = Dictionary<String, Int>()
var results = Array<Int>()

// Enumerations

// someone has defined the failure string three different ways
let result = "failure"
let result2 = "failed"
let result3 = "fail"

// an enum can save us from these discrepencies
enum Result {
    case success
    case failure
}

let result4 = Result.failure

// Enum associated values

//enum Activity {
//    case bored
//    case running
//    case talking
//    case singing
//}

// create informative details
enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity.talking(topic: "Football")

// Enum raw values

// This helps give meaning to your enum values

enum Planet: Int {
    case mercury = 1 // otherwise 0 would be the first case
    case venus
    case earth
    case mars
}

let earth = Planet(rawValue: 3)
