//
//  SongsTableViewController.swift
//  Songs
//
//  Created by BJ Miller on 10/3/14.
//  Copyright (c) 2014 Six Five Software, LLC. All rights reserved.
//

import Foundation
import UIKit

class SongsTableViewController: UITableViewController {

    var songs = [Song]()
    private let cache = NSCache()
    
    private func fetchData() {
        let url = NSURL(string: "http://itunes.apple.com/search?term=beatles&country=us")!
        let session = NSURLSession.sharedSession()
        let task = session.dataTaskWithURL(url) { data, response, error in
            
            if let taskError = error {
                // handle error
            } else {
                let httpResponse = response as! NSHTTPURLResponse
                switch httpResponse.statusCode {
                case 200..<300:
                    println("OK")
                    self.parseJson(data)
                default:
                    println("request failed: \(httpResponse.statusCode)")
                }
            }
            
        }
        task.resume()
    }
    
    func parseJson(data: NSData) {
        var error: NSError?
        let json: AnyObject? = NSJSONSerialization.JSONObjectWithData(data, options: .allZeros, error: &error)
        if error == nil {
            if let unwrappedJson: AnyObject = json {
                parseSongs(json: unwrappedJson)
            }
        }
    }
    
    func parseSongs(#json: AnyObject) {
        // This method uses nested if-let conditional binding. Swift 1.2 allows for multiple bindings in a single if statement, but since the topic is not covered in the book, this example's active code will remain as printed in the book. The Swift 1.2 version is below, commented out, if you would like to see how it works.
        
        songs = []
        if let array = json["results"] as? [[String : AnyObject]] {
            for songDictionary in array {
                if let title = songDictionary["trackName"] as? String {  // The Note on pg 385 states casting to NSString is necessary, but Swift has fixed that issue.
                    if let artist = songDictionary["artistName"] as? String {
                        if let albumName = songDictionary["collectionName"] as? String {
                            if let artworkUrl = songDictionary["artworkUrl100"] as? String {
                                let song = Song(title: title, artist: artist, albumName: albumName, artworkUrl: artworkUrl)
                                songs.append(song)
                            }
                        }
                    }
                }
            }
            dispatch_async(dispatch_get_main_queue()) {
                self.tableView.reloadData()
            }
        }

        /*
        songs = []
        if let array = json["results"] as? [[String : AnyObject]] {
            for songDictionary in array {
                if let title = songDictionary["trackName"] as? String,
                    artist = songDictionary["artistName"] as? String,
                    albumName = songDictionary["collectionName"] as? String,
                    artworkUrl = songDictionary["artworkUrl100"] as? String {
                        let song = Song(title: title, artist: artist, albumName: albumName, artworkUrl: artworkUrl)
                        songs.append(song)
                }
            }
            dispatch_async(dispatch_get_main_queue()) {
                self.tableView.reloadData()
            }
        }
        */
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        fetchData()
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songs.count
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Beatles songs"
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! UITableViewCell

        let song = songs[indexPath.row]
        cell.textLabel?.text = song.title
        cell.detailTextLabel?.text = song.albumName
        
        if let image = cache.objectForKey(song.artworkUrl) as? UIImage {
            cell.imageView?.image = image
        } else {
            // you can replace the following dispatch_async block with the below Operation Queue code
            dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)) {
                if let data = NSData(contentsOfURL: NSURL(string: song.artworkUrl)!) {
                    if let image = UIImage(data: data) {
                        self.cache.setObject(image, forKey: song.artworkUrl)
                        dispatch_async(dispatch_get_main_queue()) {
                            self.tableView.reloadRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
                        }
                    }
                }
            }
            // comment out the above code if you wish to use the following Operation Queue

            // The following code is the equivalent to the above dispatch_async(dispatch_get_global_queue...), using NSOperationQueue
            /*
            let queue = NSOperationQueue()
            class MyOperation : NSOperation {
                var song: Song
                var cache: NSCache
                init(song: Song, cache: NSCache) {
                    self.song = song
                    self.cache = cache
                }
                
                override func main() {
                    autoreleasepool {
                        if let data = NSData(contentsOfURL: NSURL(string: self.song.artworkUrl)!) {
                            if let image = UIImage(data: data) {
                                self.cache.setObject(image, forKey: self.song.artworkUrl)
                            }
                        }
                    }
                }
            }
            let operation = MyOperation(song: song, cache: cache)
            operation.completionBlock = {
                dispatch_async(dispatch_get_main_queue()) {
                    self.tableView.reloadRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
                }
            }
            queue.addOperation(operation)
            */

        }
        
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let detailViewController = segue.destinationViewController as! SongDetailViewController  // Swift 1.2 requires the as! operator to force a failable downcast
        let cell = sender as! UITableViewCell
        let indexPath = tableView.indexPathForCell(cell)!
        let song = songs[indexPath.row]
        detailViewController.song = song
    }

}
