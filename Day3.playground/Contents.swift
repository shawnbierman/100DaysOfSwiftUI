import UIKit

// MARK: - Arithmetic Operators

let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore
let difference = firstScore - secondScore

let product = firstScore * secondScore
let quotient = firstScore / secondScore

// To get the remainder after division use the '%' operator.

let remaineder = 13 % secondScore

// MARK: - Operator Overloading

let meaningOfLife = 42
let doubleMeaning = 42 + 42

// join strings with '+'
let fakers = "Fakers gonna "
let action = fakers + "fake"

// join arrays
let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf

// MARK: - Compound Assignment Operators

var score = 95
score -= 5

var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards."

// MARK: - Comparison Operators
let firstScore2 = 6
let secondScore2 = 4

// '==' checks for equality, '!=' checks for inequality
firstScore2 == secondScore2
firstScore2 != secondScore2

// comparing greater than, less than, or equal to
firstScore2 < secondScore2
firstScore2 >= secondScore2

// this also works with Strings
"Taylor" <= "Swift"

// MARK: - Conditions
let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 21 {
    print("Blackjack!")
}

// alternative code if statement is false
if firstCard + secondCard == 21 {
    print("Blackjack")
} else {
    print("Regulard cards")
}

if firstCard + secondCard == 2 {
    print("Aces - lucky!")
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regulard cards")
}

// MARK: - Combining Operators
let age1 = 12
let age2 = 21

// both must be true
if age1 > 18 && age2 < 18 {
    print("Both are over 18")
}

// only one need be true
if age1 > 18 || age2 > 18 {
    print("One of them is over 18")
}

// MARK: - The Ternary Operator
// works like if/then/else
let firstCard2 = 11
let secondCard2 = 10
print(firstCard2 == secondCard2 ? "Cards are the same" : "Cards are different")

// same result
if firstCard2 == secondCard2 {
    print("Cards are the same")
} else {
    print("Cards are different")
}

// MARK: - Switch Statements
let weather = "sunny"

//switch weather {
//case "rain":
//    print("Bring an umbrella")
//case "snow":
//    print("Wrap up warm")
//case "sunny":
//    print("Wear sunscreen")
//default:    // default is required
//    print("Enjoy your day!")
//}

// use 'fallthrough' if you want execution to
// continue on to the next case
switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough
default:    // default is required
    print("Enjoy your day!")
}

// MARK: - Range Operators

let score2 = 85

switch score2 {
case 0..<50:
    print("You failed today")
case 50..<85:
    print("You did okay.")
default:
    print("You did great!")
}
