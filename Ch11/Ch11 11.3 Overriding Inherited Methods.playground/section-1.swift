import Foundation

class MusicalInstrument {
    func makeSound() -> String {
        return "I make no sound yet."
    }
}

class Percussion : MusicalInstrument {
}
class StringedInstrument : MusicalInstrument {
}
class WindInstrument: MusicalInstrument {
    override func makeSound() -> String {
        return "I use a mouthpiece and make a beautiful sound."
    }
}

let clarinet = WindInstrument()
clarinet.makeSound()
