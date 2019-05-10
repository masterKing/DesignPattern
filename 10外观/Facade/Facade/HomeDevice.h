//
//  HomeDevice.h
//  Facade
//
//  Created by Franky on 2019/4/10.
//  Copyright © 2019 Franky. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/**
 设备基类
 */
@interface HomeDevice : NSObject
/**
 电源打开
 */
- (void)on;
/**
 电源关闭
 */
- (void)off;
@end

NS_ASSUME_NONNULL_END
