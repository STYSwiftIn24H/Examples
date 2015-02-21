enum Transformers : String {
    case OptimusPrime = "Optimus Prime"
    case Bumblebee = "Bumblebee"
    case Ratchet = "Ratchet"
    case Megatron = "Megatron"
    case Starscream = "Starscream"
}

extension Transformers {
    enum TransformerType {
        case Autobot, Decepticon
    }
    
    var type: TransformerType {
        switch self {
            case .OptimusPrime, .Bumblebee, .Ratchet:
                return .Autobot
            default:
                return .Decepticon
        }
    }
}

let transformer = Transformers.Bumblebee
switch transformer.type {
    case .Autobot:
        println("\(transformer.rawValue) is an Autobot.")
    default:
        println("\(transformer.rawValue) is a Decepticon.")
}
