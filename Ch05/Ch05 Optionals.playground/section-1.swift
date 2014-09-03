
import UIKit


// Listing 5.1
var optStr: String?
optStr = "I'm an optional string"
let unwrappedString = optStr!
println(unwrappedString)


// Listing 5.2
var optionalString: String? = "I'm a string."
if let unwrappedString2 = optionalString {
    println("unwrappedString2 is not nil, and equals \(unwrappedString2)")
} else {
    println("optionalString contains nil")
}


// Listing 5.3
var optionalInt: Int!
var myDictionary = ["life" : 32]
optionalInt = myDictionary.updateValue(42, forKey: "life")
println(optionalInt)


// Try It Yourself section
let odometerField = UITextField()
odometerField.frame = CGRect(x: 0, y: 0, width: 125, height: 44)
odometerField.text = "2564"
let lastOdometerField = UITextField()
lastOdometerField.frame = CGRect(x: 0, y: 44, width: 125, height: 44)
lastOdometerField.text = "2114"
let gallonsField = UITextField()
gallonsField.text = "16"
let avgMPGLabel = UILabel()
let milesDrivenLabel = UILabel()
var myView = UIView(frame: CGRect(x: 0, y: 0, width: 320, height: 320))
myView.backgroundColor = UIColor.lightGrayColor()
myView.addSubview(odometerField)
myView.addSubview(lastOdometerField)

let odometerReading = odometerField.text
let lastOdometerString = lastOdometerField.text
let gallonsString = gallonsField.text

var avgMilesPerGallon = 0.0
var distanceDouble = 0.0
var gallonsDouble = 0.0

if let odometerInt = odometerReading.toInt() {
    distanceDouble = Double(odometerInt)
}

if let lastOdometerInt = lastOdometerString.toInt() {
    distanceDouble -= Double(lastOdometerInt)
}

if let gallonsInt = gallonsString.toInt() {
    gallonsDouble = Double(gallonsInt)
}

if gallonsDouble != 0.0 && distanceDouble != 0.0 {
    avgMilesPerGallon = distanceDouble / gallonsDouble
}


avgMPGLabel.text = "\(avgMilesPerGallon) MPG"
milesDrivenLabel.text = "\(distanceDouble) miles per fill-up"

println("\(avgMilesPerGallon) MPG")
println("\(distanceDouble) miles per fill-up")
