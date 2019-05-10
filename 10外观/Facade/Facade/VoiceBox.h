//
//  VoiceBox.h
//  Facade
//
//  Created by Franky on 2019/4/10.
//  Copyright © 2019 Franky. All rights reserved.
//

#import "HomeDevice.h"

NS_ASSUME_NONNULL_BEGIN

@class CDPlayer;
@class DVDPlayer;

@interface VoiceBox : HomeDevice

/**
 连接到CDplayer
 */
- (void)connectCDPlayer:(CDPlayer *)cdPlayer;

/**
 断开与CDPlayer的连接
 */
- (void)disconnectCDPlayer:(CDPlayer *)cdPlayer;

/**
 连接到DVDPlayer
 */
- (void)connectDVDPlayer:(DVDPlayer *)dvdPlayer;

/**
 断开与DVDPlayer的连接
 */
- (void)disconnetDVDPlayer:(DVDPlayer *)dvdPlayer;



@end

NS_ASSUME_NONNULL_END
