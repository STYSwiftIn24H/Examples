extension String {
    var asArray: [Character] {
        var result = [Character]()
        for character in self {
            result.append(character)
        }
        return result
    }
}

extension String {
    subscript(index: Int) -> Character? {
        if !self.isEmpty && index < countElements(self) && index >= 0 {
            return self.asArray[index]
        }
        return nil
    }
}

let words = "Cuyahoga River"
let fifthChar = words[4]!
let emptyString = ""
let badIndex = emptyString[0]
