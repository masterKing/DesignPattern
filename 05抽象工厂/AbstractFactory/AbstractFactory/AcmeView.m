//
//  AcmeView.m
//  AbstractFactory
//
//  Created by Franky on 2019/4/2.
//  Copyright © 2019 Franky. All rights reserved.
//

#import "AcmeView.h"

@implementation AcmeView

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
        
        self.layer.contents = (__bridge id _Nullable)([UIImage imageNamed:@"audi"].CGImage);
        
    }
    return self;
}

@end
