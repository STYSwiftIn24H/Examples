struct Set<T: Equatable> {
    private var items = [T]()
    init() { }
    var count: Int { return items.count }
    
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

var set = Set<Int>()
set.remove(9)
set.add(5)
set.count
set.add(5)
set.count
set.add(4)
set.add(3)
set.count
set.remove(5)
set.count
set.remove(7)
set.count
