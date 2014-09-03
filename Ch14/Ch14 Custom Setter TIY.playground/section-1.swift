import Foundation

struct Square {
    var length: Double
    var area: Double {
        get {
            return length * length
        }
        set(newArea) {
            length = sqrt(newArea)
        }
    }
}

var square = Square(length: 4)
square.area
square.area = 25
square.length
