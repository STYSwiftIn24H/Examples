class Person {
    var dog: Dog?
}

class Dog {
    var name: String
    init(name: String) { self.name = name }
}

let bobbie = Person()
bobbie.dog = Dog(name: "Cletus")
let dogsName = bobbie.dog?.name

