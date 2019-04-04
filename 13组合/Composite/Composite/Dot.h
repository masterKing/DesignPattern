//
//  Dot.h
//  Composite
//
//  Created by Franky on 2019/4/4.
//  Copyright © 2019 Franky. All rights reserved.
//

#import "Vertex.h"

NS_ASSUME_NONNULL_BEGIN

@interface Dot : Vertex
{
    @private
    UIColor *_color;
    CGFloat _size;
}

@property (nonatomic, strong) UIColor *color;
@property (nonatomic, assign) CGFloat size;

@end

NS_ASSUME_NONNULL_END
