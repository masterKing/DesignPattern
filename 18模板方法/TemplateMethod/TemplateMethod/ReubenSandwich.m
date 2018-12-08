//
//  ReubenSandwich.m
//  TemplateMethod
//
//  Created by Franky on 2018/12/7.
//  Copyright © 2018 Franky. All rights reserved.
//

#import "ReubenSandwich.h"

@implementation ReubenSandwich

- (void)one_prepareBread{
    [self cutRyeBread];
}

- (void)three_addMeat{
    [self addCornBeef];
}

- (void)four_addCondiments{
    [self addSauerkraut];
    [self addThousandIsLandDressing];
    [self addSwissCheese];
}

- (void)six_extraStep{
    [self grillIt];
}

#pragma mark -
#pragma mark ReubenSandwich Specific Methods
- (void)cutRyeBread{
    // 鲁宾三明治需要两片黑麦面包
    
}

- (void)addCornBeef{
    // 加大量腌牛肉
    
}

- (void)addSauerkraut{
    // 加德国酸菜
    
}

- (void)addThousandIsLandDressing{
    // 加千岛酱
    
}

- (void)addSwissCheese{
    // 上等瑞士奶酪
    
}

- (void)grillIt{
    // 最后烤一下
    
}
@end
