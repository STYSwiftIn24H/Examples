import Foundation

// Try It Yourself - Define a Class with Properties and Methods
class Circle {
    var radius: Double = 0.0
    
    func diameter() -> Double {
        return 2 * radius
    }
    
    func area() -> Double {
        return M_PI * radius * radius
    }
}

var circle = Circle()
circle.radius = 5.0
"Circle diameter: \(circle.diameter()), area: \(circle.area())"