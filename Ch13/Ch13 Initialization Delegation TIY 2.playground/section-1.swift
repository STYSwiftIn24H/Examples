class Shape {
    var numberOfSides: Int
    init() {
        numberOfSides = 0
    }
    func description() -> String { return "I am a shape with no sides." }
}

class Square : Shape {
    var length: Int
    init(length: Int) {            // designated initializer
        self.length = length
        super.init()
        numberOfSides = 4
    }
    override convenience init() {  // convenience initializer
        self.init(length: 0)
        numberOfSides = 0
    }
    override func description() -> String {
        return "I'm a square with \(numberOfSides) sides, \(length)x\(length), area: \(length * length)"
    }
}

class Rectangle: Square {
    var width: Int
    init(length: Int, width: Int) {
        self.width = width
        super.init(length: length)
    }
    convenience init() {   // not 'override' because init() is not the superclass' designated initializer
        self.init(length: 0, width: 0)
        numberOfSides = 0
    }
    override func description() -> String {
        return "I'm a rectangle with \(numberOfSides) sides, \(length)x\(width), area: \(length * width)"
    }
}

let square = Square()
square.description()

let square2 = Square(length: 5)
square2.description()

let rectangle = Rectangle()
rectangle.description()

let rectangle2 = Rectangle(length: 3, width: 4)
rectangle2.description()

