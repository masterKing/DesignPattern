//
//  LogManager.m
//  Singleton
//
//  Created by Franky on 2019/4/9.
//  Copyright © 2019 Franky. All rights reserved.
//

#import "LogManager.h"

@implementation LogManager

+ (instancetype)sharedManager{
    static LogManager *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[super allocWithZone:NULL] init];
    });
    return instance;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone{
    return [self sharedManager];
}

- (nonnull id)copyWithZone:(nullable NSZone *)zone {
    return [[self class] sharedManager];
}

- (nonnull id)mutableCopyWithZone:(nullable NSZone *)zone {
    return [[self class] sharedManager];
}

@end
