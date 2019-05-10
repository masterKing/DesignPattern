//
//  HomeDeviceManager.m
//  Facade
//
//  Created by Franky on 2019/4/10.
//  Copyright © 2019 Franky. All rights reserved.
//

#import "HomeDeviceManager.h"
#import "AirConditioner.h"
#import "CDPlayer.h"
#import "DVDPlayer.h"
#import "VoiceBox.h"
#import "Projecter.h"

@implementation HomeDeviceManager
{
    NSMutableArray *_array;
    AirConditioner *_aAirConditioner;
    CDPlayer *_aCDPlayer;
    DVDPlayer *_aDVDPlayer;
    VoiceBox *_aVoiceBox;
    Projecter *_aProjecter;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        _aAirConditioner = [[AirConditioner alloc] init];
        _aCDPlayer = [[CDPlayer alloc] init];
        _aDVDPlayer = [[DVDPlayer alloc] init];
        _aVoiceBox = [[VoiceBox alloc] init];
        _aProjecter = [[Projecter alloc] init];
        
        _array = [NSMutableArray arrayWithArray:@[_aAirConditioner,
                                                  _aCDPlayer,
                                                  _aDVDPlayer,
                                                  _aVoiceBox,
                                                  _aProjecter]];
    }
    return self;
}

#pragma mark -
#pragma mark 空调相关

- (void)coolWind{
    [_aAirConditioner on];
    [_aAirConditioner startLowTemperatureMode];
}

- (void)warmWind{
    [_aAirConditioner on];
    [_aAirConditioner startHighTemperatureMode];
}

#pragma mark -
#pragma mark CD播放器相关

- (void)playMusic{
    [_aVoiceBox on];
    [_aCDPlayer on];
    [_aVoiceBox connectCDPlayer:_aCDPlayer];
    [_aCDPlayer play];
}

- (void)offMusic{
    [_aVoiceBox disconnectCDPlayer:_aCDPlayer];
    [_aVoiceBox off];
    [_aCDPlayer off];
}

#pragma mark -
#pragma mark DVD播放器相关

- (void)playMovie{
    [_aDVDPlayer on];
    [_aVoiceBox on];
    [_aProjecter on];
    [_aVoiceBox connectDVDPlayer:_aDVDPlayer];
    [_aProjecter connetDVDPlayer:_aDVDPlayer];
    [_aDVDPlayer play];
}

- (void)offMovie{
    [_aVoiceBox disconnetDVDPlayer:_aDVDPlayer];
    [_aVoiceBox off];
    [_aProjecter disConnetDVDPlayer:_aDVDPlayer];
    [_aProjecter off];
    [_aDVDPlayer off];
}

#pragma mark -
#pragma mark 总开关接口

- (void)allDeviceOn{
    [_array enumerateObjectsUsingBlock:^(HomeDevice * obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [obj on];
    }];
}

- (void)allDeviceOff{
    [_array enumerateObjectsUsingBlock:^(HomeDevice * obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [obj off];
    }];
}

@end
