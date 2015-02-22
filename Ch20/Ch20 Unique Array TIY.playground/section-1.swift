func unique<T: Hashable>(array: [T]) -> [T] {
    var results = [T : Int]()
    array.map { results[$0] = 1 }
    return results.keys.array
}

let numbers = [-8, 0, 1, 3, -8, 5, 3]
let greetings = ["Aloha", "Hello", "Aloha", "Bonjour", "Ciao", "Ciao"]
let bools = [true, false, true]

let uniqueItems = unique(numbers)
let uniqueGreetings = unique(greetings)
let uniqueBools = unique(bools)
