//
//  Projecter.h
//  Facade
//
//  Created by Franky on 2019/4/10.
//  Copyright © 2019 Franky. All rights reserved.
//

#import "HomeDevice.h"

NS_ASSUME_NONNULL_BEGIN

@class DVDPlayer;

@interface Projecter : HomeDevice

/**
 连接到DVDPlayer
 */
- (void)connetDVDPlayer:(DVDPlayer *)dvdPlayer;

/**
 断开与DVDPlayer的连接
 */
- (void)disConnetDVDPlayer:(DVDPlayer *)dvdPlayer;

@end

NS_ASSUME_NONNULL_END
