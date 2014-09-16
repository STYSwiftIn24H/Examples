//
// Listing 18.3
//
extension Int {
    func repeat(closure: () -> ()) {
        for _ in 1...self {
            closure()
        }
    }
}

3.repeat { println("I'm being printed!") }

//
// Listing 18.4
//
struct Player {
    var score = 0
    mutating func increaseScore() {
        ++score
    }
    mutating func decreaseScore() {
        --score
    }
}
var player = Player()
// while playing game, player wins 5 points
5.repeat { player.increaseScore() }
player.score
