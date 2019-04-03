//
//  ClothCanvasViewGenerator.h
//  FactoryMethod
//
//  Created by Franky on 2019/4/3.
//  Copyright © 2019 Franky. All rights reserved.
//

#import "CanvasViewGenerator.h"
#import "ClothCanvasView.h"

NS_ASSUME_NONNULL_BEGIN

@interface ClothCanvasViewGenerator : CanvasViewGenerator

- (CanvasView *)canvasViewWithFrame:(CGRect)aFrame;

@end

NS_ASSUME_NONNULL_END
