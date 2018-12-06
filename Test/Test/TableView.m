//
//  TableView.m
//  Test
//
//  Created by Franky on 2018/7/25.
//  Copyright © 2018年 Franky. All rights reserved.
//

#import "TableView.h"

@implementation TableView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)drawRect:(CGRect)rect{
    [super drawRect:rect];
    
    NSString *str = @"我是TableView";
    
    NSDictionary *attr = @{NSFontAttributeName: [UIFont systemFontOfSize:20]};
    
    [str drawInRect:rect withAttributes:attr];
}

@end
