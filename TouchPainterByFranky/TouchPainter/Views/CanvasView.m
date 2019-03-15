//
//  CanvasView.m
//  TouchPainter
//
//  Created by Franky on 2019/3/14.
//  Copyright © 2019 Franky. All rights reserved.
//

#import "CanvasView.h"

@implementation CanvasView

- (id)initWithFrame:(CGRect)frame
{
    if ((self = [super initWithFrame:frame]))
    {
        // Initialization code
        [self setBackgroundColor:[UIColor greenColor]];
    }
    return self;
}

@end
