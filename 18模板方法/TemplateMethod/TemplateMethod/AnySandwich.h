//
//  AnySandwich.h
//  TemplateMethod
//
//  Created by Franky on 2018/12/7.
//  Copyright © 2018 Franky. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AnySandwich : NSObject

- (void)make;

// 制作三明治的步骤
- (void)one_prepareBread;
- (void)two_putBreadonPlate;
- (void)three_addMeat;
- (void)four_addCondiments;
- (void)six_extraStep;
- (void)five_serve;

@end

NS_ASSUME_NONNULL_END
