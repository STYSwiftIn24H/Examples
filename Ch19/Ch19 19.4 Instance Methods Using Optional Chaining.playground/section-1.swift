class Site {
    var title: String
    var libraries: [Library]?
    init(title: String) { self.title = title }
    func addNewLibrary(#title: String) -> Library {
        var library = Library(title: title)
        if libraries == nil {
            libraries = []
        }
        libraries?.append(library)
        return library
    }
}

class Library {
    var title: String
    var documents: [Document]?
    init(title: String) { self.title = title }
    func addNewDocument(#title: String) -> Document {
        var document = Document(title: title)
        if documents == nil {
            documents = []
        }
        documents?.append(document)
        return document
    }
}

class Document {
    var title: String
    var checkedOut = false
    init(title: String) { self.title = title }
    func checkOut() { checkedOut = true }
    func checkIn() { checkedOut = false }
}

let acctSite = Site(title: "Accounting")
acctSite.addNewLibrary(title: "Audit Library")
let addDoc = acctSite.libraries?.first?.addNewDocument(title: "Audit Report")
let checkout = acctSite.libraries?.first?.documents?.first?.checkOut()
