//
//  Hamburger.m
//  TemplateMethod
//
//  Created by Franky on 2018/12/7.
//  Copyright © 2018 Franky. All rights reserved.
//

#import "Hamburger.h"

@implementation Hamburger

- (void)one_prepareBread{
    [self getBurgerBun];
}

- (void)three_addMeat{
    [self addBeefPatty];
}

- (void)four_addCondiments{
    [self addKetchup];
    [self addMustard];
    [self addCheese];
    [self addPickles];
}

#pragma mark -
#pragma mark Hamburger Specific Methods
- (void)getBurgerBun{
    // 汉堡包🍔需要小圆面包
}

- (void)addKetchup{
    // 先要放番茄酱,才能加其他材料
}

- (void)addMustard{
    // 然后加点芥末酱
}

- (void)addBeefPatty{
    // 汉堡包的主料是一片牛肉饼
}

- (void)addCheese{
    // 假定汉堡包都有奶酪
}

- (void)addPickles{
    // 最后加点儿腌黄瓜
}

@end
