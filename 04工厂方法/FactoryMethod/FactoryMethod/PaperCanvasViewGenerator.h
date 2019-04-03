//
//  PaperCanvasViewGenerator.h
//  FactoryMethod
//
//  Created by Franky on 2019/4/3.
//  Copyright © 2019 Franky. All rights reserved.
//

#import "CanvasViewGenerator.h"
#import "PaperCanvasView.h"

NS_ASSUME_NONNULL_BEGIN

@interface PaperCanvasViewGenerator : CanvasViewGenerator

- (CanvasView *)canvasViewWithFrame:(CGRect)aFrame;

@end

NS_ASSUME_NONNULL_END
