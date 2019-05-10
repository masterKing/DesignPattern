//
//  MallardDuck.m
//  StrategyPattern
//
//  Created by Franky on 2019/5/8.
//  Copyright © 2019 Franky. All rights reserved.
//

#import "MallardDuck.h"
#import "Quack.h"
#import "FlyWithWings.h"

@implementation MallardDuck

- (instancetype)init{
    self = [super init];
    if (self) {
        self.quackBehavior = [[Quack alloc] init];
        self.flyBehavior = [[FlyWithWings alloc] init];
    }
    return self;
}

- (void)display{
    NSLog(@"绿头鸭有绿色的头");
}

@end
