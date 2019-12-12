//
//  CanvasViewController.m
//  TouchPainter
//
//  Created by Franky on 2018/12/29.
//  Copyright © 2018 Franky. All rights reserved.
//

#import "CanvasViewController.h"
#import "PaletteViewController.h"
#import "ThumbnailViewController.h"
#import "CoordinatingController.h"
#import "CanvasView.h"
#import "CanvasViewGenerator.h"

@interface CanvasViewController ()

@end

@implementation CanvasViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    // 使用CanvasViewGenerator的工厂方法取得默认的画布视图
    CanvasViewGenerator *defaultGenerator = [[CanvasViewGenerator alloc] init];
    [self loadCanvasViewWithGenerator:defaultGenerator];
    
}

- (void)dealloc{
    NSLog(@"%s",__func__);
}

#pragma mark -
#pragma mark Loading a CanvasView from a CanvasViewGenerator

- (void)loadCanvasViewWithGenerator:(CanvasViewGenerator *)generator
{
    [_canvasView removeFromSuperview];
    CGRect aFrame = UIScreen.mainScreen.bounds;
    CanvasView *aCanvasView = [generator canvasViewWithFrame:aFrame];
    self.canvasView = aCanvasView;
    [self.view insertSubview:_canvasView atIndex:0];
}

#pragma mark -
#pragma mark Touch Event Handlers

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"%@",touches);
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
}

@end
