//
//  PaletteViewController.m
//  TouchPainter
//
//  Created by Franky on 2018/12/29.
//  Copyright © 2018 Franky. All rights reserved.
//

#import "PaletteViewController.h"

@interface PaletteViewController ()
@property (nonatomic, strong) UIButton *button;
@end

@implementation PaletteViewController

- (NSString *)title{
    return NSStringFromClass([self class]);
}

- (UIButton *)button{
    if (_button == nil) {
        _button = [[UIButton alloc] initWithFrame:CGRectMake(0, 300, UIScreen.mainScreen.bounds.size.width, 50)];
        [_button setTitle:self.title forState:UIControlStateNormal];
        [_button addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
        [_button.titleLabel setTextAlignment:NSTextAlignmentCenter];
    }
    return _button;
}

- (void)buttonClicked:(UIButton *)sender{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.view.backgroundColor = [UIColor greenColor];
    [self.view addSubview:self.button];
}

- (void)dealloc{
    NSLog(@"%s",__func__);
}

@end
