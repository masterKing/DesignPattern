//
//  Vertex.m
//  Composite
//
//  Created by Franky on 2019/4/3.
//  Copyright © 2019 Franky. All rights reserved.
//

#import "Vertex.h"

@implementation Vertex

- (id)initWithLocation:(CGPoint)aLocation;{
    if (self = [super init]) {
        [self setLocation:aLocation];
    }
    return self;
}

// 默认属性什么也不做
- (void)setColor:(UIColor *)color{}
- (UIColor *)color{return nil;}
- (void)setSize:(CGFloat)size{}
- (CGFloat)size{return 0.0;}

// Mark操作什么也不做
- (void)addMark:(id<Mark>)mark{}
- (void)removeMark:(id<Mark>)mark{}
- (id<Mark>)childMarkAtIndex:(NSUInteger)index{return nil;}
- (id<Mark>)lastChild{return nil;}
- (NSUInteger)count{return 0;}

@end
