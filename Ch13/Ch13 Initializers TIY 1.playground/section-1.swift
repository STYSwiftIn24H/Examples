//
// Ch13 Try It Yourself #1
//
enum MelonType: String {
    case Watermelon = "Watermelon", Cantaloupe = "Cantaloupe", Honeydew = "Honeydew"
    init() {
        self = .Watermelon
    }
}

struct Melon {
    var melonType: MelonType
    var seedCount: Int
    var weightInPounds: Double
    init() {
        melonType = MelonType()
        seedCount = 0
        weightInPounds = 0
    }
    init(melonType: MelonType, seedCount: Int, weightInPounds: Double) {
        self.melonType = melonType
        self.seedCount = seedCount
        self.weightInPounds = weightInPounds
    }
    func description() -> String {
        return "My \(melonType.rawValue) has \(seedCount) seeds and weighs \(weightInPounds) lbs."
    }
}

let defaultMelon = Melon()
let customMelon = Melon(melonType: .Cantaloupe, seedCount: 100, weightInPounds: 2.0)

defaultMelon.description()
customMelon.description()
