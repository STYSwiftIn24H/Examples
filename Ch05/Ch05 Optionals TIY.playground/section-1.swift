import UIKit

let odometerField = UITextField()
let lastOdometerField = UITextField()
let gallonsField = UITextField()
let avgMPGLabel = UILabel()
let distanceLabel = UILabel()

odometerField.text = "2564"
lastOdometerField.text = "2114"
gallonsField.text = "16"

let odometerString = odometerField.text
let lastOdometerString = lastOdometerField.text
let gallonsString = gallonsField.text

var avgMilesPerGallonDouble = 0.0
var distanceDouble = 0.0
var gallonsDouble = 0.0

if let odometerInt = odometerString.toInt() {
    distanceDouble = Double(odometerInt)
}
if let lastOdometerInt = lastOdometerString.toInt() {
    distanceDouble -= Double(lastOdometerInt)
}
if let gallonsInt = gallonsString.toInt() {
    gallonsDouble = Double(gallonsInt)
    avgMilesPerGallonDouble = distanceDouble / gallonsDouble
}

avgMPGLabel.text =  "\(avgMilesPerGallonDouble) MPG"
distanceLabel.text = "\(distanceDouble) miles per fill-up"
avgMilesPerGallonDouble
distanceDouble
