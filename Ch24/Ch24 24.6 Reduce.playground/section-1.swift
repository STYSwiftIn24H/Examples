var goodMorning = ["Good", "morning,", "sweetie."]
let greeting = goodMorning.reduce("") { left, right in
    return left.isEmpty ? left + " " + right : left + " " + right
}
greeting

