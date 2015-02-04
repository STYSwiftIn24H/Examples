struct Square {
    static let numberOfSides = 4
    var length: Int
    var area: Int {
        return Square.numberOfSides * length
    }
}

let square = Square(length: 4)
square.area
