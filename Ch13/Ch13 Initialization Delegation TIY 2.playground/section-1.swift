class Shape {
    var numberOfSides: Int
    init() {
        numberOfSides = 0
    }
    func description() -> String { return "I am a shape with no sides." }
}

class Rectangle: Shape {
    var width: Int
    var length: Int
    init(length: Int, width: Int) {
        self.width = width
        self.length = length
        super.init()
        numberOfSides = 4
    }
    override convenience init() {
        self.init(length: 0, width: 0)
        numberOfSides = 0
    }
    override func description() -> String {
        return "I'm a rectangle with \(numberOfSides) sides, \(length)x\(width), area: \(length * width)"
    }
}

class Square : Rectangle {
    init(length: Int) {
        super.init(length: length, width: length)
    }
    convenience init() {
        self.init(length: 0)
        numberOfSides = 0
    }
    override func description() -> String {
        return "I'm a square with \(numberOfSides) sides, \(length)x\(length), area: \(length * length)"
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