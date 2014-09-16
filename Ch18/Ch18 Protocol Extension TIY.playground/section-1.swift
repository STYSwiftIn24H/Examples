protocol Squarable {
    func squared() -> Int
}

extension Int : Squarable {
    func squared() -> Int {
        return self * self
    }
}

5.squared()
