//
//  InputValidator.h
//  Test
//
//  Created by Franky on 2018/12/5.
//  Copyright © 2018 Franky. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

static NSString * const InputValidationErrorDomain = @"InputValidationErrorDomain";

@interface InputValidator : NSObject

/**
 <#Description#>

 @param input <#input description#>
 @param error <#error description#>
 @return <#return value description#>
 */
- (BOOL)validateInput:(UITextField *)input error:(NSError **)error;
@end

NS_ASSUME_NONNULL_END
