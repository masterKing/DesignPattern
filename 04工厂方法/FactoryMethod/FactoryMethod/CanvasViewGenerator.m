//
//  CanvasViewGenerator.m
//  FactoryMethod
//
//  Created by Franky on 2019/4/3.
//  Copyright © 2019 Franky. All rights reserved.
//

#import "CanvasViewGenerator.h"

@implementation CanvasViewGenerator

- (CanvasView *)canvasViewWithFrame:(CGRect)aFrame{
    return [[CanvasView alloc] initWithFrame:aFrame];
}

@end
