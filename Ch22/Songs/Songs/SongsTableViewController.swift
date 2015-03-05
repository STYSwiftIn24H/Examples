//
//  SongsTableViewController.swift
//  Songs
//
//  Created by BJ Miller on 10/3/14.
//  Copyright (c) 2014 Six Five Software, LLC. All rights reserved.
//

import UIKit

class SongsTableViewController: UITableViewController {

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 3
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Section A"
        case 1:
            return "Section B"
        case 2:
            return "Section C"
        default:
            return nil
        }
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! UITableViewCell // the as! operator is required in Xcode 6.3, Swift 1.2, as this is a forced failable downcast. If you do not have Xcode 6.3, simply remove the !.
        
        // need to use optional chaining due to textLabel being of type UILabel?.
        cell.textLabel?.text = "Row \(indexPath.row)"
        
        let detail = self.tableView(tableView, titleForHeaderInSection: indexPath.section) ?? ""
        cell.detailTextLabel?.text = "In \(detail)"

        return cell
    }

    // MARK: - Navigation

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        let detailViewController = segue.destinationViewController as! SongDetailViewController  // The as! is inserted here also. Remove the ! if you are not yet using Xcode 6.3 or higher.
        detailViewController.song = Song(title: "Trippin' on a hole in a paper heart", artist: "Stone Temple Pilots", rating: 4.0)
    }

}
