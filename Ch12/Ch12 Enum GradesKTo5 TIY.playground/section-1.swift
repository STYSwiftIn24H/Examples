//
// Ch12 Enum GradesKTo5 TIY
//

enum GradesKTo5: String {
    case Kindergarten = "K", First = "1st"
    case Second = "2nd", Third = "3rd"
    case Fourth = "4th", Fifth = "5th"
}

var myKid = GradesKTo5.Kindergarten
myKid.rawValue
// 1 year passes...
myKid = .First
myKid.rawValue

let secondGrade = GradesKTo5.Second
let thirdGrade = GradesKTo5.Third.rawValue

let fourthGrade = GradesKTo5(rawValue: "4th")
if let fourth = fourthGrade {
    println(fourth.rawValue)
}
