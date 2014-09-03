struct Counter {
    static var count = 0
    static func increaseCount() {
        ++count
    }
}

Counter.count
Counter.increaseCount()
Counter.count
