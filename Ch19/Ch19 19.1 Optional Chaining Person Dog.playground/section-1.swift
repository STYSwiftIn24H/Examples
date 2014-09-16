class Person {
    var dog: Dog?
}

class Dog {
    var name: String
    init(name: String) { self.name = name }
}

let susie = Person()
let dogsName = susie.dog?.name