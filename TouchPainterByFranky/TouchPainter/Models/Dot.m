//
//  Dot.m
//  TouchPainter
//
//  Created by Franky on 2019/12/10.
//  Copyright © 2019 Franky. All rights reserved.
//

#import "Dot.h"

@implementation Dot

@synthesize color = _color, size = _size;

- (void)setColor:(UIColor *)color{
    _color = color;
}

#pragma mark -
#pragma mark NSCopying

- (id)copyWithZone:(NSZone *)zone{
    Dot *aDot = [[[self class] allocWithZone:zone] initWithLocation:_location];
    aDot.color = self.color;
//    aDot.color = [UIColor colorWithCGColor:[self.color CGColor]];
    aDot.size = self.size;
    return aDot;
}

@end
