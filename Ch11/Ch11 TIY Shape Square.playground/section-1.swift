class Shape {
    var title = "shape"
    func area() -> Double {
        return 0.0
    }
    
    func description() -> String {
        return "I am a \(title). My area is \(area())"
    }
}

class Square : Shape {
    var sideLength = 0.0
    
    override func area() -> Double {
        return sideLength * sideLength
    }
}

let shape = Shape()
let square = Square()
shape.area()
shape.description()
square.area()
square.description()

square.sideLength = 4
square.title = "SQUARE"

shape.area()
shape.description()
square.area()
square.description()
