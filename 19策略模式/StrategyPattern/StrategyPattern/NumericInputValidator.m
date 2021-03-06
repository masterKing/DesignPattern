//
//  NumericInputValidator.m
//  StrategyPattern
//
//  Created by Franky on 2019/5/9.
//  Copyright © 2019 Franky. All rights reserved.
//

#import "NumericInputValidator.h"

@implementation NumericInputValidator

- (BOOL)validateInput:(UITextField *)input error:(NSError *__autoreleasing  _Nullable *)error{
    NSError *regError = nil;
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"^[0-9]*$"
                                                                           options:NSRegularExpressionAnchorsMatchLines
                                                                             error:&regError];
    
    NSUInteger numberOfMatches = [regex numberOfMatchesInString:input.text
                                                        options:NSMatchingAnchored
                                                          range:NSMakeRange(0, input.text.length)];
    
    // 如果没有匹配,就返回错误和NO
    if (numberOfMatches == 0) {
        if (error != nil) {
            NSString *description = NSLocalizedString(@"Input Validation Failed", @"");
            NSString *reason = NSLocalizedString(@"The input can contain only numerical values", @"");
            NSArray *objArray = [NSArray arrayWithObjects:description, reason, nil];
            NSArray *keyArray = [NSArray arrayWithObjects:NSLocalizedDescriptionKey, NSLocalizedFailureReasonErrorKey, nil];
            
            NSDictionary *userInfo = [NSDictionary dictionaryWithObjects:objArray forKeys:keyArray];
            *error = [NSError errorWithDomain:InputValidationErrorDomain code:1001 userInfo:userInfo];
        }
        return NO;
    }
    return YES;
}

@end
