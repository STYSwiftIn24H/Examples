//
//  SongDetailViewController.swift
//  Songs
//
//  Created by BJ Miller on 10/3/14.
//  Copyright (c) 2014 Six Five Software, LLC. All rights reserved.
//

import UIKit

class SongDetailViewController: UIViewController {
    
    var song: Song?
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var artistLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.updateView()
    }

    func updateView() {
        titleLabel.text = song?.title
        artistLabel.text = song?.artist
        ratingLabel.text = "\(song?.rating) / 5 stars"
    }
    
}
