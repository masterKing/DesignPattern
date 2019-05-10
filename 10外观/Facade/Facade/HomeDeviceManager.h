//
//  HomeDeviceManager.h
//  Facade
//
//  Created by Franky on 2019/4/10.
//  Copyright © 2019 Franky. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HomeDeviceManager : NSObject

#pragma mark -
#pragma mark 空调相关

/**
 空调吹冷风
 */
- (void)coolWind;

/**
 空调吹热风
 */
- (void)warmWind;

#pragma mark -
#pragma mark CD播发器相关

/**
 播放CD
 */
- (void)playMusic;

/**
 关闭CD
 */
- (void)offMusic;

#pragma mark -
#pragma mark DVD播放器相关

/**
 播放DVD
 */
- (void)playMovie;

/**
 关闭DVD
 */
- (void)offMovie;

#pragma mark -
#pragma mark 总开关接口

/**
 打开全部家用电器
 */
- (void)allDeviceOn;

/**
 关闭所有家用电器
 */
- (void)allDeviceOff;

@end

NS_ASSUME_NONNULL_END
