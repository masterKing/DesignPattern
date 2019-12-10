//
//  Vertex.m
//  TouchPainter
//
//  Created by Franky on 2019/12/9.
//  Copyright © 2019 Franky. All rights reserved.
//

#import "Vertex.h"

@implementation Vertex

// 采用Mark协议中的属性,不做任何操作
- (void)setColor:(UIColor *)color{}
- (UIColor *)color{return nil;}
- (void)setSize:(CGFloat)size{}
- (CGFloat)size{return 0.0;}

- (void)addMark:(id<Mark>)mark {}
- (id<Mark>)childMarkAtIndex:(NSUInteger)index {return nil;}
- (void)removeMark:(id<Mark>)mark {}
- (NSUInteger)count{return 0.0;}
- (id<Mark>)lastChild{return nil;}

- (instancetype)initWithLocation:(CGPoint)location{
    if (self = [super init]) {
        self.location = location;
    }
    return self;
}

#pragma mark -
#pragma mark NSCopying method

- (id)copyWithZone:(NSZone *)zone{
    // 使用 [self class] 是因为我们希望其子类也能够复用这个复制方法
    Vertex *aVertex = [[[self class] allocWithZone:zone] initWithLocation:_location];
    return aVertex;
}

@end
