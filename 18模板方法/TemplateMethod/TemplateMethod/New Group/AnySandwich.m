//
//  AnySandwich.m
//  TemplateMethod
//
//  Created by Franky on 2018/12/7.
//  Copyright © 2018 Franky. All rights reserved.
//

#import "AnySandwich.h"

@implementation AnySandwich

- (void)make{
    [self prepareBread];
    [self putBreadonPlate];
    [self addMeat];
    [self addCondiments];
    [self serve];
}

- (void)putBreadonPlate{
    // 做任何三明治之前都要先把面包放在盘子上
    
}

- (void)serve{
    // 任何三明治做好了都要上餐
    
}

#pragma mark -
#pragma Details will be handled by subclasses

- (void)prepareBread{
    // 要保证子类重载这个方法
    [NSException raise:NSInternalInconsistencyException format:@"You must override %@ in a subclass",NSStringFromSelector(_cmd)];
}

- (void)addMeat{
    // 要保证子类重载这个方法
    [NSException raise:NSInternalInconsistencyException format:@"You must override %@ in a subclass",NSStringFromSelector(_cmd)];
}

- (void)addCondiments{
    // 要保证子类重载这个方法
    [NSException raise:NSInternalInconsistencyException format:@"You must override %@ in a subclass",NSStringFromSelector(_cmd)];
}

@end
