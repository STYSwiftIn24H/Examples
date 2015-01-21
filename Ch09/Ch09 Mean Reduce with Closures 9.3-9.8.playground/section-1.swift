//
// Ch09 Using closure expressions to reduce the mean function
//

// Listing 9.3
func mean2(numbers: [Int]) -> Double {
    var sum = 0
    func meanCombine(num1: Int, num2: Int) -> Int {
        return num1 + num2
    }
    sum = numbers.reduce(0, combine: meanCombine)
    return Double(sum) / Double(numbers.count)
}
mean2([5, 6, 7])


// Listing 9.4
func mean3(numbers: [Int]) -> Double {
    let sum = numbers.reduce(0, combine: { (num1: Int, num2: Int) -> Int in
        return num1 + num2
        })
    return Double(sum) / Double(numbers.count)
}
mean3([2, 3, 4, 5, 6, 7])


// Listing 9.5
func mean4(numbers: [Int]) -> Double {
    let sum = numbers.reduce(0, combine: { num1, num2 in
        return num1 + num2
        })
    return Double(sum) / Double(numbers.count)
}
mean4([1, 1, 2, 3])


// Listing 9.6
func mean5(numbers: [Int]) -> Double {
    let sum = numbers.reduce(0, combine: { num1, num2 in num1 + num2 })
    return Double(sum) / Double(numbers.count)
}
mean5([7, 7, 11])


// Listing 9.7
func mean6(numbers: [Int]) -> Double {
    let sum = numbers.reduce(0, combine: { $0 + $1 })
    return Double(sum) / Double(numbers.count)
}
mean6([10, 11, 12])


// Listing 9.8
func mean7(numbers: [Int]) -> Double {
    let sum = numbers.reduce(0) {$0 + $1}
    return Double(sum) / Double(numbers.count)
}

func mean8(numbers: [Int]) -> Double {
    return Double(numbers.reduce(0) {$0 + $1}) / Double(numbers.count)
}
mean7([2, 3, 4, 5, 6, 7])
mean8([2, 3, 4, 5, 6, 7])
