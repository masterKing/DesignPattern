//
//  AlphaInputValidator.h
//  Test
//
//  Created by Franky on 2018/12/5.
//  Copyright © 2018 Franky. All rights reserved.
//

#import "InputValidator.h"

NS_ASSUME_NONNULL_BEGIN

@interface AlphaInputValidator : InputValidator

/**
 保证输入只包含字母的验证方法

 @param input <#input description#>
 @param error <#error description#>
 @return <#return value description#>
 */
- (BOOL)validateInput:(UITextField *)input error:(NSError * _Nullable __autoreleasing *)error;

@end

NS_ASSUME_NONNULL_END
