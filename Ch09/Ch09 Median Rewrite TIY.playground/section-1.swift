//
// Ch09 Try It Yourself - median function re-write
//   Each function here has a new name to allow us to visualize each step in the TIY section without name conflict here in the Playground.
//
func median(numbers: [Int]) -> Int {
    let sortedNumbers = numbers.sorted({ (num1: Int, num2: Int) -> Bool in
        return num1 < num2
    })
    let midIndex = numbers.count / 2
    return sortedNumbers[midIndex]
}

func median2(numbers: [Int]) -> Int {
    let sortedNumbers = numbers.sorted({ num1, num2 in
        return num1 < num2
    })
    let midIndex = numbers.count / 2
    return sortedNumbers[midIndex]
}

func median3(numbers: [Int]) -> Int {
    let sortedNumbers = numbers.sorted({ num1, num2 in num1 < num2 })
    let midIndex = numbers.count / 2
    return sortedNumbers[midIndex]
}

func median4(numbers: [Int]) -> Int {
    let sortedNumbers = numbers.sorted({ $0 < $1 })
    let midIndex = numbers.count / 2
    return sortedNumbers[midIndex]
}

func median5(numbers: [Int]) -> Int {
    let sortedNumbers = numbers.sorted { $0 < $1 }
    let midIndex = numbers.count / 2
    return sortedNumbers[midIndex]
}

func median6(numbers: [Int]) -> Int {
    let sortedNumbers = numbers.sorted(<)
    let midIndex = numbers.count / 2
    return sortedNumbers[midIndex]
}

func median7(numbers: [Int]) -> Int {
    return numbers.sorted(<)[numbers.count / 2]
}

median([1, 2, 3, 4, 5])
median2([1, 2, 3, 4, 5])
median3([1, 2, 3, 4, 5])
median4([1, 2, 3, 4, 5])
median5([1, 2, 3, 4, 5])
median6([1, 2, 3, 4, 5])
median7([1, 2, 3, 4, 5])
