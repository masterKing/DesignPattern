//
//  Mark.h
//  Prototype
//
//  Created by Franky on 2019/4/9.
//  Copyright © 2019 Franky. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol Mark <NSObject>

@property (nonatomic, strong) UIColor * color;
@property (nonatomic, assign) CGFloat size;
@property (nonatomic, assign) CGPoint location;
@property (nonatomic, readonly) NSUInteger count; // 子节点的个数
@property (nonatomic, readonly) id <Mark> lastChild;

- (void)addMark:(id <Mark>)mark;
- (void)removeMark:(id <Mark>)mark;
- (id <Mark>)childMarkAtIndex:(NSUInteger)index;

- (instancetype)copy;

@end

NS_ASSUME_NONNULL_END
