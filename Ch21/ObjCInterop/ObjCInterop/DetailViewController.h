//
//  DetailViewController.h
//  ObjCInterop
//
//  Created by BJ Miller on 9/27/14.
//  Copyright (c) 2014 Six Five Software, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

