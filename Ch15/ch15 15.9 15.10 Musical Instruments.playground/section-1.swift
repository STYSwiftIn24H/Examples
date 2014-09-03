//
// Listing 15.9
//
class Instrument {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Brass : Instrument {
    let valves: Int
    init(name: String, valves: Int) {
        self.valves = valves
        super.init(name: name)
    }
}

class Woodwind : Instrument {
    let keys: Int
    init(name: String, keys: Int) {
        self.keys = keys
        super.init(name: name)
    }
}

let marchingInstruments = [
    Brass(name: "Trumpet", valves: 3),
    Brass(name: "Trombone", valves: 0),
    Woodwind(name: "Clarinet", keys: 18),
    Woodwind(name: "Alto Sax", keys: 22),
    Brass(name: "Piccolo Trumpet", valves: 4)
]

var brassCount = 0, woodwindCount = 0

for instrument in marchingInstruments {
    if instrument is Brass {
        ++brassCount
    } else if instrument is Woodwind {
        ++woodwindCount
    }
}

brassCount
woodwindCount

//
// Listing 15.10 - continuation of 15.9
//
func displayInstrumentInfo(instrument: Instrument) {
    if let brass = instrument as? Brass {
        println("Brass: \(brass.name). Valves: \(brass.valves)")
    } else if let woodwind = instrument as? Woodwind {
        println("Woodwind: \(woodwind.name). Keys: \(woodwind.keys)")
    }
}

displayInstrumentInfo(marchingInstruments[0])
displayInstrumentInfo(marchingInstruments[2])
