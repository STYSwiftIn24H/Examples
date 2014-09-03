var myArray = ["Foo", "Bar", "Baz"]

myArray

myArray[1]

myArray[0] = "dog"
myArray


// Listing 4.1
var tasks = [String]()
tasks = ["Clean house", "Walk dog"]
tasks.append("Wash the car")
println(tasks)

// Listing 4.2
tasks += ["Milk the cow"]
tasks += ["Rake leaves", "Mow lawn"]

// Listing 4.3
tasks.insert("Take a shower", atIndex: 4)
tasks

tasks.reverse()
let revTasks = tasks.reverse()
revTasks
tasks

let newarray = Array<Int>()
tasks[1] = "Walk Boudreau"
tasks[2...4] = ["Daily routine"]
tasks

// TIY
tasks.removeAtIndex(0)
tasks.removeLast()
tasks.removeAll(keepCapacity: false)
tasks
tasks = []
tasks

var newdict = Dictionary<String, Double>()

// Listing 4.4
var myDictionary: [String : Double] = ["pi" : 3.14]

// Listing 4.5
var specialNumbers = ["pi" : 3.14, "gravity" : 9.8]

// Listing 4.6
specialNumbers["this year"] = 2014
specialNumbers.updateValue(2013, forKey: "last year")
specialNumbers

// Listing 4.7
specialNumbers["this year"] = nil
specialNumbers.removeValueForKey("last year")

// Listing 4.8
let anArray = ["Mary", "had", "a", "little", "lamb"]
let aDictionary = ["fleece color" : "white as snow", "Mary's location" : "lamb was sure to go"]
for (index, value) in enumerate(anArray) {
    println("Index: \(index), value: \(value)")
}
for (key, value) in aDictionary {
    println("Key: \(key), value: \(value)")
}
