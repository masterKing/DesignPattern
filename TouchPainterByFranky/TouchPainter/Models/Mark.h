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
@property (nonatomic, assign) CGSize size;
@property (nonatomic, assign) CGPoint location;
@property (nonatomic, assign) NSInteger count;
@property (nonatomic, strong) id <Mark> lastChild;

- (void)addMark:(id <Mark>)mark;
- (void)removeMark:(id <Mark>)mark;
- (void)childMarkAtIndex:(NSInteger)index;
- (id)copy;

@end

