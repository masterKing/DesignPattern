//
//  ClothCanvasViewGenerator.m
//  FactoryMethod
//
//  Created by Franky on 2019/4/3.
//  Copyright © 2019 Franky. All rights reserved.
//

#import "ClothCanvasViewGenerator.h"

@implementation ClothCanvasViewGenerator

- (CanvasView *)canvasViewWithFrame:(CGRect)aFrame{
    return [[ClothCanvasView alloc] initWithFrame:aFrame];
}

@end
