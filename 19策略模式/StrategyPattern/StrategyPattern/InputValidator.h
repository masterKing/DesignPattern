//
//  InputValidator.h
//  StrategyPattern
//
//  Created by Franky on 2019/5/9.
//  Copyright © 2019 Franky. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

static NSString * const InputValidationErrorDomain = @"InputValidationErrorDomain";

@interface InputValidator : NSObject
{
    
}

- (BOOL)validateInput:(UITextField *)input error:(NSError **)error;

@end

NS_ASSUME_NONNULL_END
