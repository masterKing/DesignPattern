//
//  Car.h
//  Facade
//
//  Created by Franky on 2019/4/10.
//  Copyright © 2019 Franky. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Car : NSObject
{
    
}

/**
 松刹车
 */
- (void)releaseBrakes;
/**
 换挡
 */
- (void)changeGears;
/**
 踩油门
 */
- (void)pressAccelerator;
/**
 踩刹车
 */
- (void)pressBrakes;
/**
 松油门
 */
- (void)releaseAccelerator;

@end

NS_ASSUME_NONNULL_END
