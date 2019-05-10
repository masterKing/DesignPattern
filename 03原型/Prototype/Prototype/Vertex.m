//
//  Vertex.m
//  Prototype
//
//  Created by Franky on 2019/4/9.
//  Copyright © 2019 Franky. All rights reserved.
//

#import "Vertex.h"

@implementation Vertex

- (id)initWithLocation:(CGPoint)aLocation{
    if (self = [super init]) {
        [self setLocation:aLocation];
    }
    return self;
}



@end
