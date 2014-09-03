import Foundation

struct Point {
    var x: Double
    var y: Double
    
    func distanctTo(#point: Point) -> Double {
        let a = abs(self.x - point.x)
        let b = abs(self.y - point.y)
        let c = sqrt(a*a + b*b)
        return c
    }
}

class Circle {
    var radius: Double = 0.0
    
    func diameter() -> Double {
        return 2 * radius
    }
    
    func area() -> Double {
        return M_PI * radius * radius
    }
}

var newPoint = Point(x: 4.0, y: 3.0)
var newPointCopy = newPoint
newPointCopy.y = 17.4
newPoint
newPointCopy

var newCircle = Circle()
newCircle.radius = 3.0
var newCircleCopy = newCircle
newCircleCopy.radius = 7.5
newCircle
newCircleCopy
