struct Set<T: Equatable> {
    private var items = [T]()
    init() { }
    var count: Int {
        return items.count
    }
    
    mutating func add(value: T) {
        if !contains(items, value) { items.append(value) }
    }

    mutating func remove(value: T) -> T? {
        if !contains(items, value) { return nil }
        
        var foundIndex = 0
        for (index, item) in enumerate(items) {
            if item == value {
                foundIndex = index
                break
            }
        }
        
        items.removeAtIndex(foundIndex)
        return value
    }
}

extension Set {
    static func setWithArray(array: [T]) -> Set<T> {
        var set = Set<T>()
        array.map { set.add($0) }
        return set
    }
}

let items = [1, 2, 3, 3, 3, 4, 5]
let set = Set.setWithArray(items)
