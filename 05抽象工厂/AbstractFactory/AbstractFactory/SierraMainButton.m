//
//  SierraMainButton.m
//  AbstractFactory
//
//  Created by Franky on 2019/4/2.
//  Copyright © 2019 Franky. All rights reserved.
//

#import "SierraMainButton.h"

@implementation SierraMainButton

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
        self.backgroundColor = [[UIColor greenColor] colorWithAlphaComponent:0.45];
    }
    return self;
}

@end
