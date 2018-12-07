//
//  InputValidator.h
//  StrategyPattern
//
//  Created by Franky on 2018/12/6.
//  Copyright © 2018 Franky. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

static NSString * const InputValidationErrorDomain = @"InputValidationErrorDomain";

@interface InputValidator : NSObject

// 实际验证策略的存根方法
- (BOOL)validateInput:(UITextField *)input error:(NSError **)error;

@end

NS_ASSUME_NONNULL_END
