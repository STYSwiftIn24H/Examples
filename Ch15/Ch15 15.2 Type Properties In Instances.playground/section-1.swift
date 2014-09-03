struct Square {
    static let numberOfSides = 4
    var length: Int
    var area: Int {
        var result = 0
        for _ in 0..<Square.numberOfSides {
            result += length
        }
        return result
    }
}

let square = Square(length: 4)
square.area
