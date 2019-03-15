//
//  AcmeBrandingFactory.h
//  AbstractFactory
//
//  Created by Franky on 2019/3/15.
//  Copyright © 2019 Franky. All rights reserved.
//

#import "BrandingFactory.h"

NS_ASSUME_NONNULL_BEGIN

@interface AcmeBrandingFactory : BrandingFactory
{
    
}

- (UIView *)brandedView;
- (UIToolbar *)brandedToolbar;
- (UIButton *)brandedMainButton;

@end

NS_ASSUME_NONNULL_END
