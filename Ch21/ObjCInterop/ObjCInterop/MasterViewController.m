//
//  MasterViewController.m
//  ObjCInterop
//
//  Created by BJ Miller on 9/27/14.
//  Copyright (c) 2014 Six Five Software, LLC. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"

@interface MasterViewController ()
@property NSMutableArray *songs;
@end

@implementation MasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self setupSongs];
}

- (void)setupSongs {
    Song *song1 = [[Song alloc] initWithTitle:@"Happy" artist:@"Pharrell" rating:@4.5];
    Song *song2 = [[Song alloc] initWithTitle:@"Word Crimes" artist:@"Weird Al Yankovic" rating:@4.0];
    Song *song3 = [[Song alloc] initWithTitle:@"Untethered" artist:@"Sons of the Sea" rating:@4.8];
    
    self.songs = [@[song1, song2, song3] mutableCopy];
}

#pragma mark - Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        Song *song = self.songs[indexPath.row];
        [[segue destinationViewController] setDetailItem:song];
    }
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.songs.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];

    Song *song = self.songs[indexPath.row];
    cell.textLabel.text = song.title;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@ | %@ / 5 stars", song.artist, song.rating];
    return cell;
}

@end
