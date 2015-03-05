//
//  ViewController.swift
//  AsyncTest
//
//  Created by BJ Miller on 10/6/14.
//  Copyright (c) 2014 Six Five Software, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
        /*
            Uncomment the sections of code per Listing to see each Listing's results
        */
        
        // Listing 23.1
        println("Listing 23.1")
        for _ in 1...10 { print("A") }
        for _ in 1...10 { print("B") }
        println()

        /*
        // Listing 23.2
        println("Listing 23.2")
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)) {
            for _ in 1...10 { print("A") }
        }
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)) {
            for _ in 1...10 { print("B") }
        }
        println()
        */

        /*
        // Listing 23.3
        println("Listing 23.3")
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)) {
            for _ in 1...10 { print("A") }
            dispatch_async(dispatch_get_main_queue()) {
                for _ in 1...10 { print("B") }
            }
        }
        */
        
        /*
        // Listing 23.4
        println("Listing 23.4")
        let queue = NSOperationQueue()
        class MyOp : NSOperation {
            var whatToPrint: String!
            override func main() {
                autoreleasepool {
                    for _ in 1...10 { print(self.whatToPrint) }
                    debugPrintln("hello")
                }
            }
        }
        let myOpA = MyOp()
        myOpA.whatToPrint = "A"
        let myOpB = MyOp()
        myOpB.whatToPrint = "B"
        queue.addOperation(myOpA)
        queue.addOperation(myOpB)
        */

        /*
        // Listing 23.5
        println("Listing 23.5")
        let queue = NSOperationQueue()
        class MyOp : NSOperation {
            var whatToPrint: String!
            override func main() {
                for _ in 1...10 { print(whatToPrint) }
            }
        }
        let myOpA = MyOp()
        myOpA.whatToPrint = "A"
        let myOpB = MyOp()
        myOpB.whatToPrint = "B"
        myOpA.completionBlock = { queue.addOperation(myOpB) }
        queue.addOperation(myOpA)
        */

    }

}

