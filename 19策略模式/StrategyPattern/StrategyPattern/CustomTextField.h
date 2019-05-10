//
//  CustomTextField.h
//  StrategyPattern
//
//  Created by Franky on 2019/5/9.
//  Copyright © 2019 Franky. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "InputValidator.h"

NS_ASSUME_NONNULL_BEGIN

@interface CustomTextField : UITextField

@property (nonatomic, strong) IBOutlet InputValidator *inputValidator;

- (BOOL)validate;

@end

NS_ASSUME_NONNULL_END
