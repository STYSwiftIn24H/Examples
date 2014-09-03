struct Volume {
    static let minVolume = 0
    static let maxVolume = 20
    
    var volume: Int = 0 {
        didSet {
            if volume > Volume.maxVolume || volume < Volume.minVolume {
                volume = oldValue
            }
        }
    }
    
    mutating func turnItUp() {
        ++volume
    }
    mutating func turnItDown() {
        --volume
    }
}

var volume = Volume()
volume.volume = 1
volume.turnItDown()
volume.volume
volume.turnItDown()
volume.volume
volume.volume = 19
volume.turnItUp()
volume.volume
volume.turnItUp()
volume.volume
volume.volume = 30
volume.volume
