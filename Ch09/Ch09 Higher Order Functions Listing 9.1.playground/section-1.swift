//
// Ch09 - Higher Order Functions
//

// Listing 9.1
func mean(numbers: [Int]) -> Double {
    var sum = 0.0
    for number in numbers {
        sum += Double(number)
    }
    let mean = sum / Double(numbers.count)
    return mean
}

func median(numbers: [Int]) -> Double {
    let sortedNumbers = numbers.sorted({ (num1: Int, num2: Int) -> Bool in
        return num1 < num2
    })
    let midIndex = numbers.count / 2
    let median = Double(sortedNumbers[midIndex])
    return median
}

func mode(numbers: [Int]) -> Double {
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
    return Double(highestPair.key)
}
    
func performMathAverage(mathFunc: String) -> ([Int]) -> Double {
    switch mathFunc {
    case "mean":
        return mean
    case "median":
        return median
    default:
        return mode
    }
}

var mathFunc = performMathAverage("mean")
mathFunc([1, 1, 2, 3, 5, 8, 13])
mathFunc = performMathAverage("median")
mathFunc([4, 5, 6])
mathFunc = performMathAverage("mode")
mathFunc([1, 1, 2, 3, 5, 8, 13])
