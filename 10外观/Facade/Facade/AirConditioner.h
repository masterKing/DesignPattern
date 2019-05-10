//
//  AirConditioner.h
//  Facade
//
//  Created by Franky on 2019/4/10.
//  Copyright © 2019 Franky. All rights reserved.
//

#import "HomeDevice.h"

NS_ASSUME_NONNULL_BEGIN

@interface AirConditioner : HomeDevice

/**
 高温
 */
- (void)startHighTemperatureMode;

/**
 常温
 */
- (void)startMiddleTemperatureMode;

/**
 低温模式
 */
- (void)startLowTemperatureMode;

@end

NS_ASSUME_NONNULL_END
