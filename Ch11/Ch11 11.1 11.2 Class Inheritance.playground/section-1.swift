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
}

let clarinet = WindInstrument()
clarinet.makeSound()
