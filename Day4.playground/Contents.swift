import UIKit

// MARK: - FOR Loops

let count = 1...10 // a range of numbers: ClosedRange<Int>

// for loop
for number in count {
    print("Number is \(number)")
}

// same with arrays
let albums = ["Red", "1989", "Reputation"]

for album in albums {
    print("\(album) is on Apple Music")
}

// use an underscore if you don't use the constant in the loop
print("Players gonna ")

for _ in 1...5 {
    print("play")
}

// MARK: - WHILE Loops

// using a condition check, the loop
// will continue until the check fails

var number = 1

while number <= 20 {
    print(number)
    number += 1
}

print("Ready or not, here I come!")

// MARK: - REPEAT Loops
// Similar to While loops, but the check comes after
// the first execution of the loop. So it will always
// at least once.

var number2 = 1

repeat {
    print(number2)
    number2 += 1
} while number2 <= 20

print("Ready or not, here I come!")

// This While loop will never be executed
while false {
    print("This is false")
}

// This one will run at least once
repeat {
    print("This is false")
} while false


// MARK: - Exiting Loops
// The **break** keyword will allow you to
// exit a loop at anytime

// this is a normal 
var countDown = 10
while countDown >= 0 {
    print(countDown)
    countDown -= 1
}

print("Blast off!")

var countDown2 = 10
while countDown2 >= 0 {
    print(countDown2)

    if countDown2 == 4 {
        print("I'm bored. Let's go now!")
        break
    }

    countDown2 -= 1
}

// MARK: - Exiting Multiple Loops

for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print("\(i) * \(j) is \(product)")
    }
}

// using a label we can break from both loops
// at the same time.
outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print("\(i) * \(j) is \(product)")

        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}

// MARK: - Skipping Items

for i in 1...10 {
    if i % 2 == 1 { // skip odd numbers only
        continue
    }

    print(i)
}

// MARK: - Infinite Loops

var counter = 0

while true {
    print(" ")
    counter += 1

    if counter == 273 {
        break
    }
}
