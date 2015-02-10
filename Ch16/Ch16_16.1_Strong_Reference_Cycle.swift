enum iPhoneModel: String {
    case iPhone4 = "iPhone4", iPhone4S = "iPhone4S", iPhone5 = "iPhone5"
    case iPhone5C = "iPhone5C", iPhone5S = "iPhone5S", iPhone6 = "iPhone6"
}

class Phone {
    let model: iPhoneModel
    var owner: Person?
    init(model: iPhoneModel) {
        self.model = model
        println("\(model.rawValue) is being initialized.")
    }
    deinit {
        println("\(model.rawValue) is deinitializing")
    }
}

class Person {
    let name: String
    var phone: Phone?
    init(name: String) {
        self.name = name
        println("\(name) is being initialized.")
    }
    deinit {
        println("\(name) is deinitializing")
    }
}

var aPerson: Person?
var aPhone: Phone?

aPerson = Person(name: "Steve")
aPhone = Phone(model: .iPhone6)

aPerson = nil
aPhone = nil
