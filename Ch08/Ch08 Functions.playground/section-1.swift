// 
//  Ch 08 Playground
//

// Listing 8.1
func printHelloWorld() {
    println("Hello, world!")
}

printHelloWorld()


// Listing 8.2
func printHelloTimes(times: Int) {
    for _ in 1...times {
        println("Hello to you!")
    }
}

printHelloTimes(3)


// Listing 8.3
func printWord(word: String, numberOfTimes: Int) {
    for _ in 1...numberOfTimes {
        println("Hello \(word)")
    }
}

printWord("wonderful person reading this book", 4)


// Listing 8.4
func addVariadicNumbers(numbers: Int...) {
    var result = 0
    for eachNum in numbers {
        result += eachNum
    }
    println("Sum total of numbers: \(result)")
}

addVariadicNumbers(1, 2, 3, 4, 5)
addVariadicNumbers(4)
addVariadicNumbers(0)


// Listing 8.5 - name of function is different from book to avoid name conflicts with Listing 8.4
func addVariadicNumbersAndReturnInt(numbers: Int...) -> Int {
    var result = 0
    for eachNum in numbers {
        result += eachNum
    }
    return result
}

let sum = addVariadicNumbersAndReturnInt(7, 4, 9)


// Find mean, median, and mode of a set of numbers, from Try It Yourself section
func meanMedianMode(numbers: Int...) -> (mean: Double, median: Int, mode: Int) {
    // find mean
    var sum = 0.0
    for number in numbers {
        sum += Double(number)
    }
    let mean = sum / Double(numbers.count)
    
    // find median
    let sortedNumbers = numbers.sorted({ num1, num2 in
        return num1 < num2 })
    let midIndex = numbers.count / 2
    let median = sortedNumbers[midIndex]
    
    // find mode
    var occurrences: [Int : Int] = [:]
    for number in numbers {
        if var value = occurrences[number] {
            occurrences[number] = ++value
        } else {
            occurrences[number] = 1
        }
    }
    var highestPair: (key: Int, value: Int) = (0, 0)
    for (key, value) in occurrences {
        highestPair = (value > highestPair.value) ? (key, value) : highestPair
    }
    let mode = highestPair.key
    
    // return tuple of results
    return (mean, median, mode)
}

let mmm = meanMedianMode(1, 1, 2, 3, 5, 8, 13)
mmm.mean
mmm.median
mmm.mode



// Listing 8.6
func multiply(thisNumber num1: Int, byAnotherNumber num2: Int) -> Int {
    return num1 * num2
}

let result = multiply(thisNumber: 6, byAnotherNumber: 7)


// Listing 8.7
func append(#lastName: String, toFirstName firstName: String) -> String {
    return firstName + " " + lastName
}

let fullName = append(lastName: "Miller", toFirstName: "BJ")


// Listing 8.8
func addExercise(exercise: String, withDuration duration: Int = 20) {
    println("You did \(exercise) for \(duration) minutes")
}

addExercise("walking")
addExercise("cycling", withDuration: 30)


// Listing 8.9
func reverseWords(inout firstWord: String, inout secondWord: String) {
    var tempWord = firstWord
    firstWord = secondWord
    secondWord = firstWord
}

var firstWord = "I am first"
var secondWord = "I am second"
reverseWords(&firstWord, &secondWord)
firstWord
secondWord
