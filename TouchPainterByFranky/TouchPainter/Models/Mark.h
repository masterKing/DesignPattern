//
//  Mark.h
//  TouchPainter
//
//  Created by Franky on 2019/12/9.
//  Copyright © 2019 Franky. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol Mark <NSObject>

@property (nonatomic, strong) UIColor *color;
@property (nonatomic, assign) CGFloat size;
@property (nonatomic, assign) CGPoint location;
@property (nonatomic, readonly) NSUInteger count;// 子节点个数
@property (nonatomic, readonly) id <Mark> lastChild;

@required
- (void)addMark:(id <Mark>)mark;
- (void)removeMark:(id <Mark>)mark;
- (id <Mark>)childMarkAtIndex:(NSUInteger)index;

@end

