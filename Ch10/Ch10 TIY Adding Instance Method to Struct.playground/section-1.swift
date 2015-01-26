import Foundation

// Try It Yourself - Adding an Instance Method to a Struct
struct Point {
    var x: Double
    var y: Double
    
    func distanctTo(#point: Point) -> Double {
        let a = abs(self.x - point.x)
        let b = abs(self.y - point.y)
        let c = sqrt(a * a + b * b)
        return c
    }
    
}

let pointA = Point(x: 1.0, y: 2.0)
let pointB = Point(x: 4.0, y: 6.0)
let distance = pointA.distanctTo(point: pointB)
