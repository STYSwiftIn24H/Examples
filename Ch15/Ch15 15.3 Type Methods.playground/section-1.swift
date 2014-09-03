class AClass {
    class func aClassMethod() {
        println("aClassMethod")
    }
    class func bClassMethod() {
        aClassMethod()  // no need to prefix with class name if calling another class method
    }
    func anInstanceMethod() {
        println("anInstanceMethod. Calling bClassMethod().")
        AClass.bClassMethod()
    }
}

AClass.aClassMethod()

let aClass = AClass()
aClass.anInstanceMethod()
