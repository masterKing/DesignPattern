//
//  AcmeBrandingFactory.m
//  AbstractFactory
//
//  Created by Franky on 2019/4/2.
//  Copyright © 2019 Franky. All rights reserved.
//

#import "AcmeBrandingFactory.h"
#import "AcmeView.h"
#import "AcmeMainButton.h"
#import "AcmeToolbar.h"

@implementation AcmeBrandingFactory

- (UIView *)brandedView{
    return [[AcmeView alloc] init];
}

- (UIButton *)brandedMainButton{
    return [[AcmeMainButton alloc] init];
}

- (UIToolbar *)brandedToolbar{
    return [[AcmeToolbar alloc] init];
}

@end
