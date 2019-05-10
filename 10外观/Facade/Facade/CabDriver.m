
//
//  CabDriver.m
//  Facade
//
//  Created by Franky on 2019/4/10.
//  Copyright © 2019 Franky. All rights reserved.
//

#import "CabDriver.h"
#import "Taximeter.h"
#import "Car.h"

@implementation CabDriver

- (void)driveToLocation:(CGPoint)x{
    // *****
    
    // 启动计价器
    Taximeter *meter = [[Taximeter alloc] init];
    [meter start];
    
    // 操作车辆,直到抵达位置x
    Car *aCar = [[Car alloc] init];
    [aCar releaseBrakes];
    [aCar changeGears];
    [aCar pressAccelerator];
    
    // ******
    
    // 当达到了位置x,就停下车和计价器
    [aCar releaseAccelerator];
    [aCar pressBrakes];
    [meter stop];
    
    // ****
}

@end
