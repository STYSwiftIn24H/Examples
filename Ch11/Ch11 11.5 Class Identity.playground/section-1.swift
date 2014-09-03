import Foundation

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

class Circle: Shape {
    var radius = 0.0
    
    override func area() -> Double {
        return M_PI * radius * radius
    }
}

class Sphere: Circle {
    override func description() -> String {
        return super.description() + ". My volume is \(volume())"
    }
    func volume() -> Double {
        return (4.0 * super.area() * radius) / 3.0
    }
}

func printDescriptionForShape(shape: Shape) {
    println(shape.description())
}

let sphere = Sphere()
sphere.title = "SPHERE"
sphere.radius = 4.0

let square = Square()
square.title = "SQUARE"
square.sideLength = 5.0

printDescriptionForShape(sphere)
printDescriptionForShape(square)
