//
//  AcmeToolbar.m
//  AbstractFactory
//
//  Created by Franky on 2019/4/2.
//  Copyright © 2019 Franky. All rights reserved.
//

#import "AcmeToolbar.h"

@implementation AcmeToolbar

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
//        self.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"audiToolbar"]];
//        self.tintColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"audiToolbar"]];
        self.barTintColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"audiToolbar"]];
    }
    return self;
}

@end
