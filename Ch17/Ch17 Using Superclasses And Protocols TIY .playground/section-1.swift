protocol Rentable {
    var title: String { get }
    var barcode: String { get set }
    func rent(forWeeks weeks: Int) -> Bool
}

protocol Optical {
    var discType: OpticalDiscType { get }
}

enum OpticalDiscType {
    case CD, DVD, BluRay
}

class Media : Rentable {
    let title: String
    var barcode: String
    init(title: String, barcode: String) {
        self.title = title
        self.barcode = barcode
    }
    func rent(forWeeks weeks: Int) -> Bool {
        println("Please return \(title) in \(weeks) weeks.")
        return true
    }
}

class Book : Media {
    let chapterCount: Int
    init(title: String, barcode: String, chapterCount: Int) {
        self.chapterCount = chapterCount
        super.init(title: title, barcode: barcode)
    }
}

class DVD : Media, Optical {
    let lengthInMinutes: Int
    let discType: OpticalDiscType = .DVD
    init(title: String, barcode: String, lengthInMinutes: Int) {
        self.lengthInMinutes = lengthInMinutes
        super.init(title: title, barcode: barcode)
    }
}

class AudioCD : Media, Optical {
    let audioTracks: Int
    let discType: OpticalDiscType = .CD
    init(title: String, barcode: String, audioTracks: Int) {
        self.audioTracks = audioTracks
        super.init(title: title, barcode: barcode)
    }
}

let theNotebook = Book(title: "The Notebook", barcode: "44445555", chapterCount: 12)
theNotebook.rent(forWeeks: 3)
let majorLeague = DVD(title: "Major League", barcode: "66667777", lengthInMinutes: 107)
let incubus = AudioCD(title: "Monuments and Melodies", barcode: "88889999", audioTracks: 12)

let items: [Rentable] = [theNotebook, majorLeague, incubus]

for item in items {
    println("Item: \(item.title) is rentable. Barcode is \(item.barcode).")
    if item.title == "Monuments and Melodies" {
        println("My favorite song on \(item.title) is Black Heart Inertia.")
    }
}
