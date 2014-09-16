class Site {
    var title: String
    var libraries: [Library]?
    init(title: String) { self.title = title }
}

class Library {
    var title: String
    var documents: [Document]?
    init(title: String) { self.title = title }
}

class Document {
    var title: String
    init(title: String) { self.title = title }
}

let acctSite = Site(title: "Accounting")

let auditLibrary = Library(title: "Audit Library")
acctSite.libraries = []
acctSite.libraries?.append(auditLibrary)

let document = Document(title: "Audit Report November 2014.txt")
auditLibrary.documents = []
auditLibrary.documents?.append(document)

//let docName = acctSite.libraries?[0].documents?[0].title   // or...
let docName = acctSite.libraries?.first?.documents?.first?.title

if let name = docName {
    println("Document name is \(name)")
} else {
    println("Could not retrieve document name")
}
