//
//  PaperCanvasViewGenerator.m
//  FactoryMethod
//
//  Created by Franky on 2019/4/3.
//  Copyright © 2019 Franky. All rights reserved.
//

#import "PaperCanvasViewGenerator.h"

@implementation PaperCanvasViewGenerator

- (CanvasView *)canvasViewWithFrame:(CGRect)aFrame{
    return [[PaperCanvasView alloc] initWithFrame:aFrame];
}

@end
