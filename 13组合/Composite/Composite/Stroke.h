//
//  Stroke.h
//  Composite
//
//  Created by Franky on 2019/4/4.
//  Copyright © 2019 Franky. All rights reserved.
//

#import "Mark.h"

NS_ASSUME_NONNULL_BEGIN

@interface Stroke : NSObject <Mark>
{
    @private
    UIColor *_color;
    CGFloat _size;
    NSMutableArray *_children;
}

@property (nonatomic, strong) UIColor *color;
@property (nonatomic, assign) CGFloat size;
@property (nonatomic, assign) CGPoint location;
@property (nonatomic, readonly) NSUInteger count;
@property (nonatomic, readonly) id <Mark> lastChild;

- (void)addMark:(id<Mark>)mark;
- (void)removeMark:(id<Mark>)mark;
- (id<Mark>)childMarkAtIndex:(NSUInteger)index;

@end

NS_ASSUME_NONNULL_END
