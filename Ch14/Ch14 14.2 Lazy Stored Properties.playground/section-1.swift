class SomeClassWithExpensiveOperaton {
    func doSomeHeavyLifting() -> [String : String] {
        var aDictionary: [String : String] = [:]
        // lift heavy things and assign to aDictionary
        aDictionary["Test Key"] = "Test Value"
        return aDictionary
    }
}

class SomeClassWithLazyVar {
    lazy var dataFromNetwork = SomeClassWithExpensiveOperaton()
}

let someClass = SomeClassWithLazyVar()
someClass.dataFromNetwork.doSomeHeavyLifting()
