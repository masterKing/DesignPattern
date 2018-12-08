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
    [self one_prepareBread];
    [self two_putBreadonPlate];
    [self three_addMeat];
    [self four_addCondiments];
    [self six_extraStep];
    [self five_serve];
}

- (void)one_prepareBread{
    // 做任何三明治之前都要先把面包放在盘子上
    
}

- (void)six_extraStep{
    // 额外的步骤
    
}

- (void)five_serve{
    // 任何三明治做好了都要上餐
    
}

#pragma mark -
#pragma Details will be handled by subclasses

- (void)two_putBreadonPlate{
    // 要保证子类重载这个方法
    [NSException raise:NSInternalInconsistencyException format:@"You must override %@ in a subclass",NSStringFromSelector(_cmd)];
}

- (void)three_addMeat{
    // 要保证子类重载这个方法
    [NSException raise:NSInternalInconsistencyException format:@"You must override %@ in a subclass",NSStringFromSelector(_cmd)];
}

- (void)four_addCondiments{
    // 要保证子类重载这个方法
    [NSException raise:NSInternalInconsistencyException format:@"You must override %@ in a subclass",NSStringFromSelector(_cmd)];
}

@end
