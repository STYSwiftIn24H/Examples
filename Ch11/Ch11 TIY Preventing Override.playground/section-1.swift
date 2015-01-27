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

class Circle: Shape {
    var radius = 0.0
    
    final override func area() -> Double {
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
    override func area() -> Double {  // this should provide an error
        
    }
    func surfaceArea() -> Double {
        return 4.0 * M_PI * radius * radius
    }
}
