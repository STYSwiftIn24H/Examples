//
// Listing 18.5
//
import Foundation

struct Circle {
    var radius = 0.0
    var circumference: Double {
        return 2 * radius * M_PI
    }
}

extension Circle {
    init(circumference: Double) {
        let radius = circumference / (2 * M_PI)
        self.init(radius: radius)
    }
}

let circle = Circle(circumference: 31.42)
circle.radius



//
// Listing 18.6
//
class Person {
    var fullName: String
    init(fullName: String) {
        self.fullName = fullName
    }
}

extension Person {
    convenience init(firstName: String, lastName: String) {
        let fullName = firstName + " " + lastName
        self.init(fullName: fullName)
    }
}

let person = Person(firstName: "George", lastName: "Washington")
