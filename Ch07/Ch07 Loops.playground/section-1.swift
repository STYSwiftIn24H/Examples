//
// Ch07 Playground
//  Some variables in this Playground are renamed from what
//   the book shows, or not reintroduced with "var" or "let" 
//   if they already exist. 
//

import Foundation


// Listing 7.1
var count = 0
while count < 10 {
    println("count is \(count)")
    ++count
}


// Listing 7.2
count = 0
do {
    println("count is \(count)")
    ++count
} while count < 10


// Try It Yourself section
var timesRolled = 0
var rollOne: Int
var rollTwo: Int

do {
    rollOne = Int(arc4random_uniform(6)) + 1
    rollTwo = Int(arc4random_uniform(6)) + 1
    println("one: \(rollOne), two: \(rollTwo)")
    ++timesRolled
} while rollOne != rollTwo

println("You rolled the dice \(timesRolled) times to get matching dice values.")


// Listing 7.3 (Swift code only)
var result = 0
for count = 0; count <= 10; ++count {
    result += count
}
println("\(result)")


// snippet
let daysOfWeek = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]
for var i = 0; i < daysOfWeek.count; ++i {
    // do something with the day
}


// Listing 7.4
for count in -2...2 {
    println("count is \(count)")
}


// Listing 7.5
let myWord = "Supercalifragilisticexpialidocious"
var numberOfEsFound = 0

for eachChar in myWord {
    if eachChar == "e" {
        ++numberOfEsFound
    }
}
println("I found \(numberOfEsFound) e's in \(myWord)")


// Try It Yourself section 2
let bears = ["Papa bear", "Mama bear", "Baby bear"]
for bear in bears {
    switch bear {
        case "Papa bear":
            println("My porridge is too hot!")
        case "Mama bear":
            println("My porridge is too cold!")
        case "Baby bear":
            println("My porridge is just right!")
        default:
            println("Unrecodnized bear. Intruder alert!")
    }
}


// Listing 7.6
let retinaiPhonesAndYears = ["iPhone 4" : 2010,
                            "iPhone 4S" : 2011,
                             "iPhone 5" : 2012,
                            "iPhone 5C" : 2013,
                            "iPhone 5S" : 2013,
                             "iPhone 6" : 2014,
                        "iPhone 6 Plus" : 2014]
for (iPhone, year) in retinaiPhonesAndYears {
    println("The \(iPhone) was released in \(year)")
}


// Listing 7.7
let beatles = ["Paul", "John", "Ringo", "George"]
var ringoIndex = 0

for (index, name) in enumerate(beatles) {
    if name == "Ringo" {
        ringoIndex = index
    }
}
println("Ringo is at index \(ringoIndex) in the beatles array")


// Listint 7.8
var results = [Int]()

for count in 1...100 {
    let remainder = count % 7
    switch remainder {
    case 1...6:
        continue
    default:
        results.append(count)
    }
    println("\(count) is divisible by 7")
}


// Listing 7.9
let word = "Supercalifragilisticexpialidocious"

for eachChar in word {
    println(eachChar)
    if eachChar == "x" {
        println("\(word) contains an 'x'")
        break
    }
}
