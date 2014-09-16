protocol Rentable {
    var title: String { get }
    var barcode: String { get set }
    func rent(forWeeks weeks: Int) -> Bool
}

struct Book : Rentable {
    let title: String
    var barcode: String
    let chapterCount: Int
    
    func rent(forWeeks weeks: Int) -> Bool {
        println("Please return \(title) in \(weeks) weeks.")
        return true
    }
}

struct DVD : Rentable {
    let title: String
    var barcode: String
    let lengthInMinutes: Int
    
    func rent(forWeeks weeks: Int) -> Bool {
        println("Please return \(title) in \(weeks) weeks.")
        return true
    }
}

struct AudioCD : Rentable {
    let title: String
    var barcode: String
    let audioTracks: Int
    
    func rent(forWeeks weeks: Int) -> Bool {
        println("Please return \(title) in \(weeks) weeks.")
        return true
    }
}

let brownBear = Book(title: "Brown Bear, Brown Bear, What Do You See?", barcode: "13243546", chapterCount: 1)
let clue = DVD(title: "Clue: The Movie", barcode: "64534231", lengthInMinutes: 94)
let incubus = AudioCD(title: "If not now, when?", barcode: "09876543", audioTracks: 11)
let items: [Rentable] = [brownBear, clue, incubus]

for item in items {
    println("Item: \(item.title) is rentable. Barcode is \(item.barcode)")
}
