//
//  InputValidator.m
//  StrategyPattern
//
//  Created by Franky on 2019/5/9.
//  Copyright © 2019 Franky. All rights reserved.
//

#import "InputValidator.h"

@implementation InputValidator

- (BOOL)validateInput:(UITextField *)input error:(NSError * _Nullable __autoreleasing *)error{
    if (error) {
        *error = nil;
    }
    return NO;
}

@end
