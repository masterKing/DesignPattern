//
//  Vertex.h
//  Composite
//
//  Created by Franky on 2019/4/3.
//  Copyright © 2019 Franky. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mark.h"

NS_ASSUME_NONNULL_BEGIN

@interface Vertex : NSObject <Mark>
{
    @protected
    CGPoint _location;
    
}

@property (nonatomic, strong) UIColor *color;
@property (nonatomic, assign) CGFloat size;
@property (nonatomic, assign) CGPoint location;
@property (nonatomic, readonly) NSUInteger count;
@property (nonatomic, readonly) id <Mark> lastChild;

- (void)addMark:(id<Mark>)mark;
- (void)removeMark:(id<Mark>)mark;
- (id<Mark>)childMarkAtIndex:(NSUInteger)index;

- (id)initWithLocation:(CGPoint)aLocation;
@end

NS_ASSUME_NONNULL_END
