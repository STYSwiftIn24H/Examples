//
// Listing 15.5
//
typealias Vol = Int
var volume: Vol = 0


//
// Listing 15.6
//
typealias ArrayCompletion = ([Int]?) -> ()

func downloadLotsOfData(completion: ArrayCompletion) {
    var someData: [Int]?
    // download lots of data
    completion(someData)  // execute the completion handler
}
