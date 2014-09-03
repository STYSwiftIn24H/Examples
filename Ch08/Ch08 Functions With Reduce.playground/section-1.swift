// Playground - noun: a place where people can play

import UIKit

func printHelloWorld() {
    println("Hello, world!")
}
printHelloWorld()

func printHelloTimes(times: Int) {
    for _ in 1...times {
        println("Thanks for printing me!")
    }
}
printHelloTimes(3)

func printWord(word: String, numberOfTimes: Int) {
    for _ in 1...numberOfTimes {
        println("Hello \(word)")
    }
}
printWord("wonderful person reading this book", 4)

func printHello(toThing: String) {
    println("Hello, \(toThing)")
}
printHello("all nations")

func addTwoNumbers(num1: Int, num2: Int) {
    println("\(num1 + num2)")
}
addTwoNumbers(3, 4)

func addTwoNumbers2(num1: Int, num2: Int) -> Int {
    return num1 + num2
}
var myNum = addTwoNumbers2(5, 6)

func increment(var aNumber: Int) -> Int {
    return ++aNumber
}
let a = increment(5)

func increment(inout num1: Int, inout num2: Int) -> Int {
    ++num1
    ++num2
    return num1 + num2
}
var x = 5
var y = 8
let z = increment(&x, &y)

func addVariadicIntegers(integers: Int...) -> Int {
    var result = 0
    for eachInt in integers {
        result += eachInt
    }
    return result
}
addVariadicIntegers(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

func addVariadicIntegersWithReduce(integers: Int...) -> Int {
    return integers.reduce(0) { $0 + $1 }
}
addVariadicIntegersWithReduce(1, 2, 3, 4, 5)
addVariadicIntegersWithReduce()
addVariadicIntegersWithReduce(1)

func findMode(numbers: [Int]) -> Int {
    var occurrences: [Int : Int] = [:]
    for num in numbers {
        if var val = occurrences[num] {
            occurrences[num] = ++val
        } else {
            occurrences[num] = 1
        }
    }
    var mode = 0
    for (key, value) in occurrences {
        if value > mode {
            mode = key
        }
    }
    return mode
}

func meanMedianMode(numbers: Int...) -> (mean: Int, median: Int, mode: Int) {
    let mean = numbers.reduce(0, { $0 + $1 }) / numbers.count
    let median = numbers.sorted({ $0 < $1 })[numbers.count / 2]
    let mode = findMode(numbers)
    return (mean, median, mode)
}
meanMedianMode(1, 7, 2, 3, 4, 5, 6, 7)


