//
//  Song.m
//  ObjCInterop-Final
//
//  Created by BJ Miller on 10/28/14.
//  Copyright (c) 2014 Six Five Software, LLC. All rights reserved.
//

#import "Song.h"

@interface Song ()

@end

@implementation Song

- (instancetype)initWithTitle:(NSString *)title artist:(NSString *)artist rating:(NSNumber *)rating {
    if (self = [super init]) {
        self.title = title;
        self.artist = artist;
        self.rating = rating;
    }
    return self;
}

@end
