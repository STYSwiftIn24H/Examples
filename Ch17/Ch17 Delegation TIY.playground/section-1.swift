protocol Healable {
    var healableName: String { get }
    var heartsRestores: Double { get }
}

struct BluePotion : Healable {
    var healableName: String { return "blue potion" }
    var heartsRestores: Double { return 4 }
}

struct Heart : Healable {
    var healableName: String { return "heart piece" }
    var heartsRestores: Double { return 1 }
}

struct Enemy {
    let name: String
    let damage: Double
}

protocol GameManagerDelegate {
    func gameDidStart(game: TheLegendOfZelda)
    func gameDidEnd(game: TheLegendOfZelda)
}

class TheLegendOfZelda {
    let maxHeartContainers: Double = 20.0
    let minHearts: Double = 0.0
    
    let delegate: GameManagerDelegate
    
    let name: String = "Link"
    var sword: String?
    var heartContainers = 3.0
    var hearts: Double = 0.0 {
        didSet {
            if hearts > heartContainers {
                hearts = heartContainers
            }
            if hearts <= minHearts {
                hearts = minHearts
            }
        }
    }
    
    init(delegate: GameManagerDelegate) {
        self.delegate = delegate
        self.delegate.gameDidStart(self)
    }
    
    func takeDamage(fromEnemy enemy: Enemy) {
        hearts -= enemy.damage
        println("\(name) lost \(enemy.damage) hearts from \(enemy.name), and has \(hearts) hearts left.")
        if hearts == 0 {
            self.delegate.gameDidEnd(self)
        }
    }
    func heal(#item: Healable) {
        hearts += item.heartsRestores
        println("\(name) gained \(item.heartsRestores) hearts from a \(item.healableName), and has \(hearts) hearts left.")
    }
}


class GameManager : GameManagerDelegate {
    func gameDidStart(game: TheLegendOfZelda) {
        println("It's dangerous to go alone. Take this.")
        game.sword = "Wooden Sword"
        game.hearts = 3.0
    }
    func gameDidEnd(game: TheLegendOfZelda) {
        println("GAME OVER. RETURN OF GANON.")
    }
}

var link = TheLegendOfZelda(delegate: GameManager())
let keese = Enemy(name: "a Keese", damage: 0.5)
let dekuBaba = Enemy(name: "a Deku Baba", damage: 1.0)
let ganon = Enemy(name: "Ganon", damage: 2.0)
link.takeDamage(fromEnemy: keese)
link.heal(item: BluePotion())
link.takeDamage(fromEnemy: keese)
link.takeDamage(fromEnemy: dekuBaba)
link.heal(item: Heart())
link.takeDamage(fromEnemy: ganon)
link.takeDamage(fromEnemy: ganon)
