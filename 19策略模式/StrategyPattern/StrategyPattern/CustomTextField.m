//
//  CustomTextField.m
//  StrategyPattern
//
//  Created by Franky on 2019/5/9.
//  Copyright © 2019 Franky. All rights reserved.
//

#import "CustomTextField.h"

@implementation CustomTextField

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (BOOL)validate{
    NSError *error = nil;
    BOOL validationResult = [self.inputValidator validateInput:self error:&error];
    
    if (!validationResult) {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:error.localizedDescription
                                                            message:error.localizedFailureReason
                                                           delegate:nil
                                                  cancelButtonTitle:NSLocalizedString(@"OK", @"")
                                                  otherButtonTitles:nil];
        [alertView show];
    }
    
    return validationResult;
}

@end
