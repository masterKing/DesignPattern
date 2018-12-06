//
//  AlphaInputValidator.m
//  Test
//
//  Created by Franky on 2018/12/5.
//  Copyright © 2018 Franky. All rights reserved.
//

#import "AlphaInputValidator.h"

@implementation AlphaInputValidator

- (BOOL)validateInput:(UITextField *)input error:(NSError *__autoreleasing  _Nullable *)error{
    NSError *regError = nil;
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"^[a-zA-Z]*$" options:NSRegularExpressionAnchorsMatchLines error:&regError];
    
    NSUInteger numberOfMatches = [regex numberOfMatchesInString:input.text options:NSMatchingAnchored range:NSMakeRange(0, [[input text] length])];
    
    // 如果没有匹配,就返回错误和NO
    if (numberOfMatches == 0) {
        if (error != nil) {
            NSString *description = NSLocalizedString(@"Input Validation Failed", @"");
            NSString *reason = NSLocalizedString(@"The input can contain only letters", @"");
            
            NSArray *objArray = [NSArray arrayWithObjects:description, reason, nil];
            NSArray *keyArray = [NSArray arrayWithObjects:NSLocalizedDescriptionKey, NSLocalizedFailureReasonErrorKey, nil];
            
            NSDictionary *userInfo = [NSDictionary dictionaryWithObjects:objArray forKeys:keyArray];
            *error = [NSError errorWithDomain:InputValidationErrorDomain code:1002 userInfo:userInfo];
        }
        return NO;
    }
    return YES;
}

@end
