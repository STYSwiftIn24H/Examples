struct Stack<T> {
    var items = [T]()
    mutating func push(item: T) {
        items.append(item)
    }
    mutating func pop() -> T? {
        if items.isEmpty { return nil }
        return items.removeLast()
    }
}

var myIntStack = Stack<Int>()var myStringStack = Stack<String>()//var myCustomStack = Stack<SomeCustomType>()  // just an example

// The following lines were not in the book, but give a good example of how to use the Stack we just created
myIntStack.push(5)
myIntStack.push(7)
myIntStack.push(9)
let poppedNum1 = myIntStack.pop()
poppedNum1
let poppedNum2 = myIntStack.pop()
let poppedNum3 = myIntStack.pop()
let poppedNum4 = myIntStack.pop()
