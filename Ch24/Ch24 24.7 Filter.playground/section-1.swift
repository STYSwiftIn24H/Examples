var fooDictionary = ["fooOne" : 1, "two" : 2, "fooThree" : 3]
let foos = fooDictionary.keys.filter { startsWith($0, "foo") }
foos.array

let divisibleByTwo = fooDictionary.values.filter { $0 % 2 == 0 }
divisibleByTwo.array
