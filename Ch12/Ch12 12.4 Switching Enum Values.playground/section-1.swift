enum GradesKTo5 {
    case Kindergarten, First, Second, Third, Fourth, Fifth
}

let studentGrade = GradesKTo5.First

switch studentGrade {
case .Kindergarten:
    println("Welcome to Kindergarten!")
case .First:
    println("First grade will be awesome!")
case .Second:
    println("You're in second grade? You must be smart!")
case .Third:
    println("You'll master multiplication in third grade!")
case .Fourth:
    println("Fourth grade spelling bee tryouts, first day!")
case .Fifth:
    println("Fifth graders rule the school!")
}
