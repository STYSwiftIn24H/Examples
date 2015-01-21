//
// Ch09 Map Each Element Try-It-Yourself example
//

func square(num: Int) -> Int {
    return num * num
}

func mapEachElement(inArray arr: [Int], withFunc aFunc: (Int) -> Int) -> [Int] {
    var returnArray = [Int]()
    for num in arr {
        returnArray.append(aFunc(num))
    }
    return returnArray
}

let firstArray = [1, 2, 3, 4, 5]
let secondArray = mapEachElement(inArray: firstArray, withFunc: square)
