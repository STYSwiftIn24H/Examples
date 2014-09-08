class Employee {
    var name: String
    let email: Email!
    init(name: String, emailAddress: String) {
        self.name = name
        self.email = Email(address: emailAddress, employee: self)
        println("\(name) is being initialized.")
    }
    deinit {
        println("\(name) is being deinitialized.")
    }
}

class Email {
    var address: String
    var server = "imap.company.com"
    unowned let employee: Employee
    init(address: String, employee: Employee) {
        self.address = address
        self.employee = employee
        println("\(address) is being initialized.")
    }
    deinit {
        println("\(address) is being deinitialized.")
    }
}

var employee: Employee? = Employee(name: "BJ", emailAddress: "BJ@company.com")
employee = nil
