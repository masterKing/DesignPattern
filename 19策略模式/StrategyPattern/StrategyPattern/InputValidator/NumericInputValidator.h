//
//  NumericInputValidator.h
//  StrategyPattern
//
//  Created by Franky on 2018/12/6.
//  Copyright © 2018 Franky. All rights reserved.
//

#import "InputValidator.h"

NS_ASSUME_NONNULL_BEGIN

@interface NumericInputValidator : InputValidator

// 保证输入只包含数字(即0~9)的验证方法
- (BOOL)validateInput:(UITextField *)input error:(NSError * _Nullable __autoreleasing *)error;

@end

NS_ASSUME_NONNULL_END
