
import Foundation


// Listing 6.3
let valueToCheck = true
if valueToCheck {
    println("valueToCheck is true")
} else {
    println("valueToCheck is false")
}


// Listing 6.4
let myColor = "blue"
if myColor == "red" {
    println("Stop signs are red")
} else if myColor == "blue" {
    println("The sky is blue in Ohio...sometimes")
} else {
    println("I don't know what color myColor is")
}


// Try It Yourself section
let randomNumber = arc4random() % 10
var result: String!

if randomNumber == 0 {
    result = "Zero is the first index in an array"
} else if randomNumber == 1 {
    result = "One is the loneliest number..."
} else {
    result = "Our random number is \(randomNumber)"
}

result


// Listing 6.5
let randomNumber2 = arc4random() % 10
var result2: String!

switch randomNumber2 {
case 0:
    result2 = "Zero is th first index in an array"
case 1:
    result2 = "One is the loneliest number..."
default:
    result2 = "Our random number is \(randomNumber2)"
}

result2


// Listing 6.6
let farmAnimal = "chicken"
switch farmAnimal {
case "cow", "pig", "goat":
    println("cow, pig, or goat was matched")
case "chicken", "rooster":
    println("chicken or rooster was matched")
default:
    println("unrecognized farm animal")
}


// Try It Yourself setion 2
let examScore = arc4random() % 101
var grade: String!

switch examScore {
case 90...100:
    grade = "A"
case 80..<90:
    grade = "B"
case 70..<80:
    grade = "C"
case 60..<70:
    grade = "D"
default:
    grade = "F"
}

"Student received \(grade)"


// Listing 6.7
let carInventory = ("Ford", 55)

switch carInventory {
case (_, 50...100):
    "We have too many \(carInventory.0) cars. Sell! Sell! Sell!"
case (let make, 0...20):
    "We are low on \(make). Buy more inventory."
case ("Ford", let num):
    "We have \(num) Fords in stock."
default:
    "Unrecognized make"
}


// Listing 6.8
let wordTuple = ("car", 2)

switch wordTuple {
case let (word, amount) where amount == 1:
    "You have \(amount) \(word)."
case let (word, amount) where amount == 0:
    "You have no \(word)s"
case let (word, amount):
    "You have \(amount) \(word)s"
}


// Break example
let someValue = 0
switch someValue {
case 0:
    "someValue is 0."
    break
default:
    break
}


// Falltrough example
let anotherValue = 0
switch anotherValue {
case 0..<20:
    "\(anotherValue) is between 0 and 19"
    fallthrough
case 10..<20:
    "\(anotherValue) is between 10 and 19"
default:
    "default branch."
}