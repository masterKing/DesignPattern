//
//  Duck.m
//  StrategyPattern
//
//  Created by Franky on 2019/5/8.
//  Copyright © 2019 Franky. All rights reserved.
//

#import "Duck.h"

@implementation Duck

- (void)swim{
    NSLog(@"🦆在游泳🏊‍♀️");
}

- (void)display{
    
}


- (void)performFly{
    [self.flyBehavior fly];
}

- (void)performQuack{
    [self.quackBehavior quack];
}

@end
