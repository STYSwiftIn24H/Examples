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
    
    func songsFromJson(json: AnyObject?) {
        
    }
    
    func fetchSongs() {
        println("main: \(NSDate())")
        let requestUrlString = "https://itunes.apple.com/search?term=beatles&country=us"
        let requestUrl = NSURL(string: requestUrlString)
        let responseData = NSData(contentsOfURL: requestUrl)
        var error: NSError?
        let json: AnyObject? = NSJSONSerialization.JSONObjectWithData(responseData, options: NSJSONReadingOptions.AllowFragments, error: &error)
//        self.songsFromJson(json)
        println("json: \(json)")
        println("main: \(NSDate())")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.fetchSongs()
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
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell

        let song = songs[indexPath.row]
        cell.textLabel?.text = "\(song.title)"
        cell.detailTextLabel?.text = "\(song.albumName)"

        return cell
    }

    // MARK: - Navigation

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        let detailViewController = segue.destinationViewController as SongDetailViewController
        let cell = sender as UITableViewCell
        let indexPath = tableView.indexPathForCell(cell)!
        let song = songs[indexPath.row]
        detailViewController.song = song
    }

}
