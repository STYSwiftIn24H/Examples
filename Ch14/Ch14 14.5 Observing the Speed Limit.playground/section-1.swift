class Vehicle {
    var speed: Int
    var speedLimit: Int {
        willSet {
            println("Prepare to change speed to \(newValue) MPH")
        }
        didSet {
            var changeSpeed: () -> () = (speed > speedLimit) ? slowDown : speedUp
            while speed != speedLimit {
                changeSpeed()
            }
            println("Now I'm driving \(speed) MPH because the speed limit changed to \(speedLimit) MPH from \(oldValue) MPH\n")
        }
    }
    
    init(speedLimit: Int, speed: Int) {
        self.speedLimit = speedLimit
        self.speed = speed
        println("Speed limit is \(speedLimit) MPH, I'm driving \(speed) MPH")
    }
    
    func speedUp() {
        println("Speeding up to \(++speed) MPH...")
    }
    
    func slowDown() {
        println("Slowing down to \(--speed) MPH...")
    }
}

let car = Vehicle(speedLimit: 65, speed: 65)
car.speedLimit = 55
car.speedLimit = 70
