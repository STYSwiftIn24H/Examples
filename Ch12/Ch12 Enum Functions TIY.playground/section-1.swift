enum PhoneNumber {
    case TollFree(Int, Int, Int)
    case InternalExtension(Int)
    
    func ext() -> String {
        var resultExtension = ""
        switch self {
        case .TollFree(_, _, let xtnsn):
            resultExtension = "Toll-Free extension: \(xtnsn)"
        case .InternalExtension(let xtnsn):
            resultExtension = "Internal extension: \(xtnsn)"
        }
        return resultExtension
    }
}
var number = PhoneNumber.TollFree(800, 555, 1212)
number.ext()

number = .InternalExtension(4357)
number.ext()
