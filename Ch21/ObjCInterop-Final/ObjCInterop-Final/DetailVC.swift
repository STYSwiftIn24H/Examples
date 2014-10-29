//
//  DetailVC.swift
//  ObjCInterop-Final
//
//  Created by BJ Miller on 10/28/14.
//  Copyright (c) 2014 Six Five Software, LLC. All rights reserved.
//

import UIKit

class DetailVC : UIViewController {
    @IBOutlet weak var detailDescriptionLabel: UILabel!
    
    var detailItem: AnyObject? {
        didSet {
            self.configureView()
        }
    }
    
    func configureView() {
        detailDescriptionLabel?.text = detailItem?.description
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureView()
    }
}
