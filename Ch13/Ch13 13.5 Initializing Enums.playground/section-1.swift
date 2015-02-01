enum GradesKTo5: String {
    case Kindergarten = "K", First = "1st", Second = "2nd"
    case Third = "3rd", Fourth = "4th", Fifth = "5th"
    init() {
        self = .Kindergarten
    }
}
let k = GradesKTo5()
k.rawValue
