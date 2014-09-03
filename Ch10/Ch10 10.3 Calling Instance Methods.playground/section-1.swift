import Foundation

struct Point {
    var x: Double
    var y: Double
    
    func distanceTo(#point: Point) -> Double {
        let a = abs(self.x - point.x)
        let b = abs(self.y - point.y)
        let c = sqrt(a*a + b*b)
        return c
    }
    
    func halfDistanceTo(#point: Point) -> Double {
        return distanceTo(point: point) / 2.0
    }
}

let pointA = Point(x: 1.0, y: 2.0)
let pointB = Point(x: 4.0, y: 6.0)
let halfDistance = pointA.halfDistanceTo(point: pointB)