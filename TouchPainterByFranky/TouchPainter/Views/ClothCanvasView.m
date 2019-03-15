//
//  ClothCanvasView.m
//  TouchPainter
//
//  Created by Franky on 2019/3/14.
//  Copyright © 2019 Franky. All rights reserved.
//

#import "ClothCanvasView.h"

@implementation ClothCanvasView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        UIImage *backgroundImage = [UIImage imageNamed:@"cloth"];
        UIImageView *backgroundView = [[UIImageView alloc] initWithImage:backgroundImage];
        [self addSubview:backgroundView];
    }
    return self;
}

// 其他行为的实现

@end
