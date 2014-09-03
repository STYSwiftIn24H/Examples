//
// Listing 12.3 Associated Values
//

enum PhoneNumber {
    case TollFree(Int, Int, Int)
    case InternalExtension(Int)
}

let customerService = PhoneNumber.TollFree(800, 555, 1212)
