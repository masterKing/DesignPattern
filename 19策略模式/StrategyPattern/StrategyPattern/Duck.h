//
//  Duck.h
//  StrategyPattern
//
//  Created by Franky on 2019/5/8.
//  Copyright © 2019 Franky. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FlyBehavior.h"
#import "QuackBehavior.h"

NS_ASSUME_NONNULL_BEGIN

@interface Duck : NSObject{
    @private
    NSInteger _footCount;
}

@property (nonatomic, strong) FlyBehavior *flyBehavior;
@property (nonatomic, strong) QuackBehavior *quackBehavior;

- (void)swim;
- (void)display;
- (void)performFly;
- (void)performQuack;

@end

NS_ASSUME_NONNULL_END
