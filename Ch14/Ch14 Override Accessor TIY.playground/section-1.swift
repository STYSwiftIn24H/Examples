import Foundation

class Shape {
    var area = 0.0
}

class Square: Shape {
    var length: Double
    override var area: Double {
        get {
            return length * length
        }
        set {
            length = sqrt(newValue)
        }
    }
    init(length: Double) {
        self.length = length
    }
}

let shape = Shape()
shape.area

let square = Square(length: 10)
square.area
square.area = 49
square.length
