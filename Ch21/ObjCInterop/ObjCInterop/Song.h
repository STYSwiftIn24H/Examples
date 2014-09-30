//
//  Song.h
//  ObjCInterop
//
//  Created by BJ Miller on 9/27/14.
//  Copyright (c) 2014 Six Five Software, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Song : NSObject

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *artist;
@property (nonatomic, strong) NSNumber *rating;

- (instancetype)initWithTitle:(NSString *)title artist:(NSString *)artist rating:(NSNumber *)number;

@end
