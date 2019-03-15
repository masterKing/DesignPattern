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
    
    UIBarButtonItem *itemOne = [[UIBarButtonItem alloc] initWithTitle:@"跳转1" style:UIBarButtonItemStylePlain target:self action:@selector(buttonClicked:)];
    itemOne.tag = 1;
    
    UIBarButtonItem *itemTwo = [[UIBarButtonItem alloc] initWithTitle:@"跳转2" style:UIBarButtonItemStylePlain target:self action:@selector(buttonClicked:)];
    itemTwo.tag = 2;
    
    UIBarButtonItem *spaceOne = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    UIBarButtonItem *spaceTwo = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    UIBarButtonItem *spaceThree = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    
    UIToolbar *toolbar = [[UIToolbar alloc] init];
    CGFloat h = 44;
    toolbar.frame = CGRectMake(0, UIScreen.mainScreen.bounds.size.height - h, UIScreen.mainScreen.bounds.size.width, h);
    [self.view addSubview:toolbar];
    toolbar.items = @[spaceOne,itemOne,spaceTwo,itemTwo,spaceThree];
}

- (void)buttonClicked:(UIBarButtonItem *)sender{
    if ([sender.title isEqualToString:@"跳转1"]) {
//        PaletteViewController *vc = [[PaletteViewController alloc] init];
//        [self presentViewController:vc animated:YES completion:nil];
        
        [[CoordinatingController shareInstance] requestViewChangeByObject:sender];
    }else{
//        ThumbnailViewController *vc = [[ThumbnailViewController alloc] init];
//        [self presentViewController:vc animated:YES completion:nil];
        
        [[CoordinatingController shareInstance] requestViewChangeByObject:sender];
    }
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
    [self.view addSubview:_canvasView];
}


@end
