class MathFunction {
    var firstNum: Int
    var secondNum: Int

    lazy var multiply: () -> Int = { [unowned self] in
        return self.firstNum * self.secondNum
    }

    init(firstNum: Int, secondNum: Int) {
        self.firstNum = firstNum
        self.secondNum = secondNum
        println("initializing.")
    }

    deinit {
        println("deinitializing.")
    }
}

var math: MathFunction? = MathFunction(firstNum: 3, secondNum: 5)
println(math!.multiply())
math = nil
