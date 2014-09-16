typealias MPH = Double
extension MPH {
    var kmPerHour: Double { return self * 1.60934 }
    var milesPerMinute: Double { return self / 60.0 }
}

let speed: MPH = 60
speed.kmPerHour
speed.milesPerMinute
