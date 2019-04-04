//
//  Dot.m
//  Composite
//
//  Created by Franky on 2019/4/4.
//  Copyright © 2019 Franky. All rights reserved.
//

#import "Dot.h"

@implementation Dot
@synthesize size=_size, color=_color;

- (void)dealloc{
    NSLog(@"%s",__func__);
}

@end
