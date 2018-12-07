//
//  InputValidator.m
//  StrategyPattern
//
//  Created by Franky on 2018/12/6.
//  Copyright © 2018 Franky. All rights reserved.
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
