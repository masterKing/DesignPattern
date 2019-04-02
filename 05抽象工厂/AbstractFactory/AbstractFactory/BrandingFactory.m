//
//  BrandingFactory.m
//  AbstractFactory
//
//  Created by Franky on 2019/4/2.
//  Copyright © 2019 Franky. All rights reserved.
//

#import "BrandingFactory.h"
#import "AcmeBrandingFactory.h"
#import "SierraBrandingFactory.h"

@implementation BrandingFactory

+ (BrandingFactory *)factory{
    uint32_t random = arc4random_uniform(2);
    if (random == 0) {
        return [[AcmeBrandingFactory alloc] init];
    }else if (random == 1) {
        return [[SierraBrandingFactory alloc] init];
    }else{
        return nil;
    }
}

- (UIView *)brandedView{
    return nil;
}

- (UIToolbar *)brandedToolbar{
    return nil;
}

- (UIButton *)brandedMainButton{
    return nil;
}

@end
