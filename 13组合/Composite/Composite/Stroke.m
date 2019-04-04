//
//  Stroke.m
//  Composite
//
//  Created by Franky on 2019/4/4.
//  Copyright © 2019 Franky. All rights reserved.
//

#import "Stroke.h"

@implementation Stroke

@synthesize color=_color, size=_size;
@dynamic location;

- (instancetype)init
{
    self = [super init];
    if (self) {
        _children = [[NSMutableArray alloc] initWithCapacity:5];
    }
    return self;
}

- (void)setLocation:(CGPoint)location{
    
}

- (CGPoint)location{
    // 返回第一个子节点的位置
    if ([_children count] > 0) {
        id <Mark> obj = _children.firstObject;
        return [obj location];
    }
    // 否则,返回原点
    return CGPointZero;
}

- (void)addMark:(id<Mark>)mark{
    [_children addObject:mark];
}

- (void)removeMark:(id<Mark>)mark{
    if ([_children containsObject:mark]) {
        [_children removeObject:mark];
    }else{
        [_children makeObjectsPerformSelector:@selector(removeMark:) withObject:mark];
    }
}

- (id<Mark>)childMarkAtIndex:(NSUInteger)index{
    if (index >= [_children count]) {
        return nil;
    }
    return [_children objectAtIndex:index];
}

- (id<Mark>)lastChild{
    return [_children lastObject];
}

- (NSUInteger)count{
    return [_children count];
}

- (void)dealloc{
    NSLog(@"%s",__func__);
}

@end
