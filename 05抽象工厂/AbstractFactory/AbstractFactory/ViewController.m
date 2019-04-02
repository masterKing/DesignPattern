//
//  ViewController.m
//  AbstractFactory
//
//  Created by Franky on 2019/4/2.
//  Copyright © 2019 Franky. All rights reserved.
//

#import "ViewController.h"
#import "BrandingFactory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)loadView{

    BrandingFactory *aFactory = [BrandingFactory factory];
    
    UIView *view = [aFactory brandedView];
    
    UIButton *button = [aFactory brandedMainButton];
    CGFloat buttonW = 130;
    CGFloat buttonH = 73;
    button.frame = CGRectMake((UIScreen.mainScreen.bounds.size.width - buttonW) * 0.5,
                              (UIScreen.mainScreen.bounds.size.height - buttonH) * 0.5,
                              buttonW,
                              buttonH);
    
    UIToolbar *toolbar = [aFactory brandedToolbar];
    CGFloat toolbarH = 50;
    toolbar.frame = CGRectMake(0,
                               UIScreen.mainScreen.bounds.size.height - toolbarH,
                               UIScreen.mainScreen.bounds.size.width,
                               toolbarH);
    
    [view addSubview:button];
    [view addSubview:toolbar];
    
    self.view = view;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


@end
