struct Answer : Comparable {
    var text: String
    var score: Int
    var accepted: Bool
}

func == (lhs: Answer, rhs: Answer) -> Bool {
    return (lhs.accepted == rhs.accepted) && (lhs.score == rhs.score)
}

func < (lhs: Answer, rhs: Answer) -> Bool {
    if lhs.accepted {
        return false
    } else if rhs.accepted {
        return true
    } else {
        return lhs.score < rhs.score
    }
}


let answer1 = Answer(text: "I have the answer!", score: 100, accepted: true)
let answer2 = Answer(text: "Mediocre answer", score: 30, accepted: false)
let answer3 = Answer(text: "I have the answer!", score: 100, accepted: true)

answer1 == answer2
answer2 != answer3
answer1 == answer3

answer1 < answer2
answer2 < answer3
answer1 >= answer3