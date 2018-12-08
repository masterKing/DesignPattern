//
//  ReubenSandwich.h
//  TemplateMethod
//
//  Created by Franky on 2018/12/7.
//  Copyright © 2018 Franky. All rights reserved.
//

#import "AnySandwich.h"

NS_ASSUME_NONNULL_BEGIN

@interface ReubenSandwich : AnySandwich

#pragma mark -
#pragma 重载父类的方法
- (void)one_prepareBread;
- (void)three_addMeat;
- (void)four_addCondiments;
- (void)six_extraStep;

// 鲁宾三明治的特有操作
/**
 切黑麦面包
 */
- (void)cutRyeBread;
/**
 加大量腌牛肉
 */
- (void)addCornBeef;
/**
 加德国🇩🇪酸菜
 */
- (void)addSauerkraut;
/**
 加千岛酱
 */
- (void)addThousandIsLandDressing;
/**
 加瑞士奶酪
 */
- (void)addSwissCheese;
/**
 烤一下
 */
- (void)grillIt;
@end

NS_ASSUME_NONNULL_END
