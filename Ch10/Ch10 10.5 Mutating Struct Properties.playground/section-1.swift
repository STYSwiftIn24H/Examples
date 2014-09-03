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
    
    mutating func moveToZero() {
        self.x = 0.0
        self.y = 0.0
    }
}

var point = Point(x: 3.5, y: 6.0)
point.moveToZero()
point
