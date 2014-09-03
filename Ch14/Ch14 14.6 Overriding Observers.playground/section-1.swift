class Vehicle {
    var speed: Int
    var speedLimit: Int {
        willSet {
            println("willSet for Vehicle. Prepare to change speed to \(newValue) MPH")
        }
        didSet {
            println("didSet for Vehicle.")
            var changeSpeed: () -> () = (speed > speedLimit) ? slowDown : speedUp
            while speed != speedLimit {
                println("Increasing by 1")
                changeSpeed()
            }
            println("Now I'm driving \(speed) MPH because the speed limit changed to \(speedLimit) MPH from \(oldValue) MPH\n")
        }
    }
    init(speedLimit: Int, speed: Int) {
        self.speed = speed
        self.speedLimit = speedLimit
        println("Speed limit is \(speedLimit) MPH, I'm driving \(speed) MPH")
    }
    func speedUp() {
        println("Speeding up to \(++speed) MPH...")
    }
    func slowDown() {
        println("Slowing down to \(--speed) MPH...")
    }
}

class Porsche : Vehicle {
    override var speedLimit: Int {
        willSet {
            println("willSet for Porsche.")
        }
        didSet {
            println("didSet for Porsche.")
            var changeSpeed: () -> () = (speed > speedLimit) ? slowDown : speedUp
            let porscheSpeedLimit = speedLimit + 10
            while speed != porscheSpeedLimit {
                println("Increasing by 2 because Porsches are fast")
                changeSpeed()
                changeSpeed()
            }
            println("Porsches should always go faster than the speed limit.")
        }
    }
}

let porsche = Porsche(speedLimit: 65, speed: 65)
porsche.speedLimit = 70
porsche.speed
