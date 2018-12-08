//
//  Hamburger.h
//  TemplateMethod
//
//  Created by Franky on 2018/12/7.
//  Copyright © 2018 Franky. All rights reserved.
//

#import "AnySandwich.h"

NS_ASSUME_NONNULL_BEGIN

@interface Hamburger : AnySandwich

- (void)one_prepareBread;
- (void)three_addMeat;
- (void)four_addCondiments;

// 汉堡包特有的方法
/**
 汉堡包需要小圆面包
 */
- (void)getBurgerBun;
/**
 添加番茄酱
 */
- (void)addKetchup;
/**
 添加芥末酱
 */
- (void)addMustard;
/**
 添加牛肉饼
 */
- (void)addBeefPatty;
/**
 添加奶酪
 */
- (void)addCheese;
/**
 添加腌黄瓜
 */
- (void)addPickles;
@end

NS_ASSUME_NONNULL_END
