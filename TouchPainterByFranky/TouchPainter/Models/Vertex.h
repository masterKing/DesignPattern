//
//  Vertex.h
//  TouchPainter
//
//  Created by Franky on 2019/12/9.
//  Copyright © 2019 Franky. All rights reserved.
//

#import "Mark.h"

@interface Vertex : NSObject <Mark, NSCopying>
{
    @protected
    CGPoint _location;
}

@property (nonatomic, assign) CGPoint location;

- (instancetype)initWithLocation:(CGPoint)location;

@end
