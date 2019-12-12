//
//  Stroke.h
//  TouchPainter
//
//  Created by Franky on 2019/12/11.
//  Copyright © 2019 Franky. All rights reserved.
//

#import "Mark.h"

@interface Stroke : NSObject <Mark, NSCopying>
{
    @private
    UIColor *_color;
    CGFloat _size;
    NSMutableArray *_children;
}

@property (nonatomic, strong) UIColor *color;
@property (nonatomic, assign) CGFloat size;
@property (nonatomic, assign) CGPoint location;
@property (nonatomic, readonly) NSUInteger count;// 子节点个数
@property (nonatomic, readonly) id <Mark> lastChild;

- (void)addMark:(id<Mark>)mark;
- (void)removeMark:(id<Mark>)mark;
- (id<Mark>)childMarkAtIndex:(NSUInteger)index;

@end

