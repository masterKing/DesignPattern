//
//  AlphaInputValidator.h
//  StrategyPattern
//
//  Created by Franky on 2019/5/9.
//  Copyright © 2019 Franky. All rights reserved.
//

#import "InputValidator.h"

NS_ASSUME_NONNULL_BEGIN

@interface AlphaInputValidator : InputValidator
{
    
}

- (BOOL)validateInput:(UITextField *)input error:(NSError * _Nullable __autoreleasing *)error;

@end

NS_ASSUME_NONNULL_END
