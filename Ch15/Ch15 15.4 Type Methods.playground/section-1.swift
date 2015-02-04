struct Counter {
    static var count = 0
    static func increaseCountByOne() {
        ++count
    }
}

Counter.count
Counter.increaseCountByOne()
Counter.count
