//
//  CanvasViewGenerator.h
//  FactoryMethod
//
//  Created by Franky on 2019/4/3.
//  Copyright © 2019 Franky. All rights reserved.
//

#import "CanvasView.h"

NS_ASSUME_NONNULL_BEGIN

@interface CanvasViewGenerator : NSObject
{
    
}

- (CanvasView *)canvasViewWithFrame:(CGRect)aFrame;

@end

NS_ASSUME_NONNULL_END
