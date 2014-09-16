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

let book = Book(title: "Goodnight Moon", barcode: "12344321", chapterCount: 1)
book.rent(forWeeks: 2)

