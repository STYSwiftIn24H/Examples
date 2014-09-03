//
// Listing 12.5 Using Bindinds with Associated Values
//

enum PhoneNumber {
    case TollFree(Int, Int, Int)
    case InternalExtension(Int)
}

let customerService = PhoneNumber.TollFree(800, 555, 1212)

switch customerService {
case .TollFree(_, _, let ext):
    println("Toll-free number, extension: \(ext)")
case .InternalExtension(let ext):
    println("Internal extension: \(ext)")
}