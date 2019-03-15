//
//  ViewController.m
//  AbstractFactory
//
//  Created by Franky on 2019/3/15.
//  Copyright © 2019 Franky. All rights reserved.
//

#import "ViewController.h"
#import "BrandingFactory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)loadView{
    // 使用BrandingFactory获得的带品牌UI元素的构建视图
    BrandingFactory *factory = [BrandingFactory factory];

    UIView *view = [factory brandedView];
    
    UIButton *button = [factory brandedMainButton];
    
    UIToolbar *toolbar = [factory brandedToolbar];
    
    
}

@end
