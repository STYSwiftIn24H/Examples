protocol Rentable {
    var title: String { get }
    var barcode: String { get set }
}

struct Book : Rentable {
    let title: String
    var barcode: String
    let chapterCount: Int
}

let book = Book(title: "Sams Teach Yourself Swift in 24 Hours", barcode: "12345678", chapterCount: 24)

