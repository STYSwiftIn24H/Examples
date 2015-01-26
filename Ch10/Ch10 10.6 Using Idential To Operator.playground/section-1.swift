import Foundation

class Circle {
    var radius: Double = 0.0
    
    func diameter() -> Double {
        return 2 * radius
    }
    
    func area() -> Double {
        return M_PI * radius * radius
    }
}

let circleOne = Circle()
circleOne.radius = 5.0
let circleTwo = Circle()
circleTwo.radius = 5.0
let circleThree = circleOne

if circleOne === circleTwo {
    "circleOne is identical to circleTwo"
} else {
    "circleOne is not identical to cirleTwo"
}

if circleOne !== circleThree {
    "circleOne is not identical to circleThree"
} else {
    "circleOne is identical to circleThree"
}
