//
//  BrandingFactory.m
//  AbstractFactory
//
//  Created by Franky on 2019/3/15.
//  Copyright © 2019 Franky. All rights reserved.
//

#import "BrandingFactory.h"
#import "AcmeBrandingFactory.h"
#import "SierraBrandingFactory.h"

@implementation BrandingFactory

+ (BrandingFactory *)factory
{
    
#if defined (USE_ACME)
    return [[AcmeBrandingFactory alloc] init];
#elif defined (USE_SIERRA)
    return [[SierraBrandingFactory alloc] init];
#else
    return nil;
#endif

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
