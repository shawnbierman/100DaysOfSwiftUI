import UIKit

// MARK: - Initializers

// Initializers are used to create a struct.
// A 'memberwise' initializer is provided by default
// but you may create your own

struct User {
    var username: String
}

// we can create an instance of User
// using the memberwise initializer
var user = User(username: "shawn")

// or we can provide our own init()

struct User2 {
    var username: String
    
    init() {                        // 'func' is not required for init()
        username = "Anonymous"      // but all properties will need values
        
        print("Creating a new user!")
    }
}

var user2 = User2()
user2.username

// MARK: - Self

// a special constant that exists inside a method that
// refers to the instance it is in

struct Person {
    var name: String
    
    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}

// MARK: - Lazy Properties

// Swift lets you create some properties only
// when they are needed.

struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

struct Person2 {
    var name: String
    var familyTree = FamilyTree()
    
    init(name: String) {
        self.name = name
    }
}

var ed = Person2(name: "Ed")

// you don't see 'creating family tree'
// because we never access it.

// until here.
ed.familyTree

// MARK: - Static Properties and Methods

// each struct has its own properties and methods
// but we can share them across all instances of a
// struct by declaring them 'static'

struct Student {
    static var classSize = 0
    var name: String
    
    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}


// the static var belongs to the struct type
// so you must reference the type and then
// the variable

print(Student.classSize)

// MARK: - Access Control

// Now we can control who can access
// what properties or methods

struct Person3 {
    private var id: String
    
    init(id: String) {
        self.id = id
    }
}

let ed2 = Person3(id: "12345")
//print(ed2.id) // fails

struct Person4 {
    private var id: String
    
    init(id: String) {
        self.id = id
    }
    
    // although 'id' is marked 'private'
    // the members of the struct can
    // still access it
    
    func identify() -> String {
        "My social security number is \(id)"
    }
}

let ed3 = Person4(id: "82888uygdsf")
print(ed3.identify())
