//
// Ch09 - Nested Functions
//

// Listing 9.2
func performMathAverage(mathFunc: String) -> ([Int]) -> Double {
    var sum = 0.0
    func mean(numbers: [Int]) -> Double {
        for number in numbers {
            sum += Double(number)
        }
        return sum / Double(numbers.count)
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
mathFunc([10, 11, 10, 12, 10, 13])
mathFunc = performMathAverage("median")
mathFunc([10, 11, 10, 12, 10, 13])
mathFunc = performMathAverage("mode")
mathFunc([10, 11, 10, 12, 10, 13])
