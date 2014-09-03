import Foundation

let anotherValue = 15
switch anotherValue {
case 0..<20:
    "\(anotherValue) is between 0 and 19"
    fallthrough
case 10..<20:
    "\(anotherValue) is between 10 and 19"
default:
    "default."
}

let cartuple = ("car", 2)

switch cartuple {
case let (x, y) where y == 1:
    "You have \(y) \(x)"
case let (x, y):
    "You have \(y) \(x)s"
}


let carInfo = ("Chevy", 55)

switch carInfo {
case (_, 50...100):
    "We have too many \(carInfo.0) cars. We need to sell some more!"
case (let make, 0...20):
    "We are low on \(make), we need more inventory"
case ("Ford", let num):
    "We have \(num) Fords in stock"
default:
    "Unrecognized make"
}

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

"Student received: \(grade)"



let randomNumber = arc4random() % 10
var result: String!

switch randomNumber {
case 0:
    result = "Zero is the first index of an array"
case 1:
    result = "One is the loneliest number..."
default:
    result = "Our random number is \(randomNumber)"
}

