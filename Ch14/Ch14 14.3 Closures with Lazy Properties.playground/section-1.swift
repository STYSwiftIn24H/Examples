class SomeClassWithLazyVar {
    lazy var dataFromNetwork: [String : String] = {
        var aDictionary: [String : String] = [:]
        //  lift heavy things and assign to aDictionary
        aDictionary["Test Key"] = "Test Value"
        return aDictionary
    }()
}

let someClass = SomeClassWithLazyVar()
someClass.dataFromNetwork
