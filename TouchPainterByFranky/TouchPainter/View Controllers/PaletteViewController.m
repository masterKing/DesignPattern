//
//  PaletteViewController.m
//  TouchPainter
//
//  Created by Franky on 2018/12/29.
//  Copyright © 2018 Franky. All rights reserved.
//

#import "PaletteViewController.h"

@interface PaletteViewController ()
@end

@implementation PaletteViewController

- (NSString *)title{
    return NSStringFromClass([self class]);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

}

- (void)dealloc{
    NSLog(@"%s",__func__);
}

@end
