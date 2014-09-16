protocol Rentable {
    var title: String { get }
    var barcode: String { get set }
    func rent()
}

struct Book : Rentable {
    let title: String
    var barcode: String
    let chapterCount: Int
    
    func rent() {
        println("Please return \(title) in 3 weeks.")
    }
}

let book = Book(title: "To Kill A Mockingbird", barcode: "87654321", chapterCount: 31)
book.rent()
