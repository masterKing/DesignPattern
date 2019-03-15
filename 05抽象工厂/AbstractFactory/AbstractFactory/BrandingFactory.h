//
//  BrandingFactory.h
//  AbstractFactory
//
//  Created by Franky on 2019/3/15.
//  Copyright © 2019 Franky. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BrandingFactory : NSObject
{
    
}

+ (BrandingFactory *) factory;

- (UIView *) brandedView;
- (UIButton *) brandedMainButton;
- (UIToolbar *) brandedToolbar;

@end

NS_ASSUME_NONNULL_END
