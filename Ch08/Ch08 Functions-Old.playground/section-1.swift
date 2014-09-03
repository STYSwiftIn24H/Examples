/* 
func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    func stepForward(input: Int) -> Int { return input + 1 }
    func stepBackward(input: Int) -> Int { return input - 1 }
    return backward ? stepBackward : stepForward
}

var currentValue = -4
let moveNearerToZero = chooseStepFunction(currentValue > 0)

println("Counting to zero.")
while currentValue != 0 {
    println("\(currentValue)...")
    currentValue = moveNearerToZero(currentValue)
}
println("zero!")


func testForTwoDefaultValues(initialValue: Int, toPower power: Int = 2, thenAdd add: Int = 2) -> Int {
    var result = 1
    for _ in 1...power {
        result *= power
    }
    result += add
    return result
}

testForTwoDefaultValues(2, toPower: 2, thenAdd: 2)
testForTwoDefaultValues(2)

var mystr: String = "alsekj"
for i in mystr.startIndex..<mystr.endIndex {
    
}



//func sayHello(toPeopleWithNames people: String...) {
//    if people.isEmpty {
//        println("Hello, world")
//    } else {
//        for person in people {
//            println("Hello, \(person)")
//        }
//    }
//}
//sayHello(toPeopleWithNames: "You", "and you")

*/

let newline = "\n"
var people = ["LLVM Master", "Obj-C Old-timer",
    "Swift Programmer"]

func createGreeting(withGreeting greeting: String) -> (String) -> String {
    func flexibleGreeting(name: String = "World") -> String {
        return "\(greeting), \(name)"
    }
    return flexibleGreeting
}

let hello = createGreeting(withGreeting: "Hello")
let bonjour = createGreeting(withGreeting: "Bonjour")
let hey = createGreeting(withGreeting: "Hey")

hello("my friend")
bonjour("mon ami")
hey("buddy")

func greet(theFollowingPeople folks: [String], withMessage message: (String) -> String) -> (Int, String) {
    var temporaryGreeting = ""
    for folk in folks {
        temporaryGreeting = temporaryGreeting + message(folk) + newline
    }
    return (folks.count, temporaryGreeting)
}

greet(theFollowingPeople: people, withMessage: hey)



