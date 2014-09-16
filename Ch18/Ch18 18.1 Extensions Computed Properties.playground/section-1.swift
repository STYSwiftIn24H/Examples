extension String {
    var asArray: [Character] {
        var result = [Character]()
            for character in self {
                result.append(character)
            }
            return result
    }
}

let chars = "Hello".asArray
let dog = "Fido"
let dogChars = dog.asArray