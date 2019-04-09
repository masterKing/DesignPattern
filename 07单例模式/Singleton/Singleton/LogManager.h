//
//  LogManager.h
//  Singleton
//
//  Created by Franky on 2019/4/9.
//  Copyright © 2019 Franky. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LogManager : NSObject <NSCopying,NSMutableCopying>

+ (instancetype)sharedManager;

@end

NS_ASSUME_NONNULL_END
