//
//  Vertex.h
//  Prototype
//
//  Created by Franky on 2019/4/9.
//  Copyright © 2019 Franky. All rights reserved.
//

#import "Mark.h"

NS_ASSUME_NONNULL_BEGIN

@interface Vertex : NSObject <Mark,NSCopying>
//{
//    @protected
//    CGPoint _location;
//}
//
//@property (nonatomic, strong) UIColor * color;
//@property (nonatomic, assign) CGFloat size;
//@property (nonatomic, assign) CGPoint location;
//@property (nonatomic, readonly) NSUInteger count;
//@property (nonatomic, readonly) id <Mark> lastChild;

- (id)initWithLocation:(CGPoint)aLocation;
//- (void)addMark:(id<Mark>)mark;
//- (void)removeMark:(id<Mark>)mark;
//- (id<Mark>)childMarkAtIndex:(NSUInteger)index;

- (id)copyWithZone:(NSZone *)zone;

@end

NS_ASSUME_NONNULL_END
