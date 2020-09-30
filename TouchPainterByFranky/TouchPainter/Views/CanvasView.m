//
//  CanvasView.m
//  TouchPainter
//
//  Created by Franky on 2019/3/14.
//  Copyright © 2019 Franky. All rights reserved.
//

#import "CanvasView.h"

@implementation CanvasView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setBackgroundColor:[UIColor whiteColor]];
    }
    return self;
}

- (void)drawRect:(CGRect)rect{
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextMoveToPoint(context, 100, 100);
    CGContextAddLineToPoint(context, 100, 400);
    CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);
    CGContextStrokePath(context);
    
    
//    if (CGPointEqualToPoint(self.point, CGPointZero) ) {
//        CGContextMoveToPoint(context, self.point.x, self.point.y);
//    }else{
//        CGContextAddLineToPoint(context, self.point.x, self.point.y);
//    }
//    CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);
//    CGContextStrokePath(context);
}

@end
