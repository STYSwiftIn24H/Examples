struct Square {
    var length: Double
    var area: Double {
        get {
            return length * length
        }
    }
}

var square = Square(length: 4)
square.area
