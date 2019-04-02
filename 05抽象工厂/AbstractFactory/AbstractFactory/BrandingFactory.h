//
//  BrandingFactory.h
//  AbstractFactory
//
//  Created by Franky on 2019/4/2.
//  Copyright © 2019 Franky. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

/**
 这是一个抽象的工厂类,定义所有具体工厂类应该有的接口
 */
@interface BrandingFactory : NSObject
{
    
}

+ (BrandingFactory *)factory;

- (UIView *)brandedView;
- (UIButton *)brandedMainButton;
- (UIToolbar *)brandedToolbar;

@end

NS_ASSUME_NONNULL_END
