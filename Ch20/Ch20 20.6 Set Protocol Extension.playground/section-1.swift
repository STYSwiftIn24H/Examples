import Foundation

// existing struct from previous example
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

// Listing 20.6
protocol Returnable {
    typealias ItemType
    var any: ItemType? { get }
    var allObjects: [ItemType] { get }
}

extension Set : Returnable {
    typealias ItemType = T
    var any: T? {
        if items.isEmpty { return nil }
        
        let randomNumber = Int(arc4random_uniform(UInt32(items.count)))
        return items[randomNumber]
    }
    var allObjects: [T] {
        return items
    }
}

extension Set : Printable {
    var description: String { return "\(items)" }
}

let fish = ["One", "Fish", "Two", "Fish", "Red", "Fish", "Blue", "Fish"]
var set = Set.setWithArray(fish)
set.any
set.add("Dr. Seuss")
set.description

let allObjects = set.allObjects
allObjects

