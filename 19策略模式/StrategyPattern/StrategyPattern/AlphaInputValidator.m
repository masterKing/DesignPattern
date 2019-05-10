//
//  AlphaInputValidator.m
//  StrategyPattern
//
//  Created by Franky on 2019/5/9.
//  Copyright © 2019 Franky. All rights reserved.
//

#import "AlphaInputValidator.h"

@implementation AlphaInputValidator

- (BOOL)validateInput:(UITextField *)input error:(NSError *__autoreleasing  _Nullable *)error{
    NSError *regError = nil;
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"^[a-zA-Z]*$"
                                                                           options:(NSRegularExpressionAnchorsMatchLines)
                                                                             error:&regError];

    NSUInteger numberOfMatches = [regex numberOfMatchesInString:input.text
                                                        options:NSMatchingAnchored
                                                          range:NSMakeRange(0, input.text.length)];
    if (numberOfMatches == 0) {
        if (error != nil) {
            NSString *description = NSLocalizedString(@"Input Validation Failed", @"");
            NSString *reason = NSLocalizedString(@"The input can contain only letters", @"");
            
            NSArray *objArray = [NSArray arrayWithObjects:description, reason, nil];
            NSArray *keyArray = [NSArray arrayWithObjects:NSLocalizedDescriptionKey, NSLocalizedFailureReasonErrorKey, nil];
            
            NSDictionary *userInfo = [NSDictionary dictionaryWithObjects:objArray forKeys:keyArray];
            *error = [NSError errorWithDomain:InputValidationErrorDomain
                                         code:1002
                                     userInfo:userInfo];
        }
        return NO;
    }
    return YES;
}

@end
