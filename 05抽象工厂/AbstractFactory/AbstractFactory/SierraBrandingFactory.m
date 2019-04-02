//
//  SierraBrandingFactory.m
//  AbstractFactory
//
//  Created by Franky on 2019/4/2.
//  Copyright © 2019 Franky. All rights reserved.
//

#import "SierraBrandingFactory.h"
#import "SierraView.h"
#import "SierraMainButton.h"
#import "SierraToolbar.h"

@implementation SierraBrandingFactory

- (UIView *)brandedView{
    return [[SierraView alloc] init];
}

- (UIButton *)brandedMainButton{
    return [[SierraMainButton alloc] init];
}

- (UIToolbar *)brandedToolbar{
    return [[SierraToolbar alloc] init];
}

@end
