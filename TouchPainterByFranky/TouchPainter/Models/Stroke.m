//
//  Stroke.m
//  TouchPainter
//
//  Created by Franky on 2019/12/11.
//  Copyright © 2019 Franky. All rights reserved.
//

#import "Stroke.h"

@implementation Stroke

@synthesize color = _color, size = _size;
@dynamic location;

- (instancetype)init
{
    self = [super init];
    if (self) {
        _children = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)setLocation:(CGPoint)location{
    
}

- (CGPoint)location{
    // 返回第一个子节点的位置
    if ([_children count] > 0) {
        id <Mark> amark = [_children objectAtIndex:0];
        return [amark location];
    }
    return CGPointZero;
}

- (void)addMark:(id<Mark>)mark{
    [_children addObject:mark];
}

- (void)removeMark:(id<Mark>)mark{
    if ([_children containsObject:mark]) {
        [_children removeObject:mark];
    }else{
        [_children makeObjectsPerformSelector:@selector(removeMark:)
                                   withObject:mark];
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

#pragma mark -
#pragma mark NSCopying

- (id)copyWithZone:(NSZone *)zone{
    Stroke *strokeCopy = [[[self class] allocWithZone:zone] init];
    // 复制color
    strokeCopy.color = [UIColor colorWithCGColor:self.color.CGColor];
    // 复制size
    strokeCopy.size = self.size;
    // 复制children
    for (id <Mark> child in _children) {
        id <Mark> childCopy = [child copy];
        [strokeCopy addMark:childCopy];
    }
    return strokeCopy;
}


@end
