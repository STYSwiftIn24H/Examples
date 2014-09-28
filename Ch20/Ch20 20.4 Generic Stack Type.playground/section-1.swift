struct Stack<T> {
    var items = [T]()
    mutating func push(item: T) {
        items.append(item)
    }
    mutating func pop() -> T? {
        if items.isEmpty { return nil }
        return items.removeLast()
    }
}

extension Stack {
    var last: T? {
        return self.items.last
    }
}
