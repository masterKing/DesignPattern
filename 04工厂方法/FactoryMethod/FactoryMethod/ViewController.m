//
//  ViewController.m
//  FactoryMethod
//
//  Created by Franky on 2019/4/3.
//  Copyright © 2019 Franky. All rights reserved.
//

#import "ViewController.h"
#import "CanvasView.h"
#import "CanvasViewGenerator.h"

@interface ViewController ()
@property (nonatomic, strong) CanvasView *aCanvasView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    CanvasViewGenerator *defaultGenerator = [[CanvasViewGenerator alloc] init];
    [self loadCanvasViewWithGenerator:defaultGenerator];
}

#pragma mark -
#pragma mark Loading a CanvasView from a CanvasViewGenerator
- (void)loadCanvasViewWithGenerator:(CanvasViewGenerator *)generator{
    [_aCanvasView removeFromSuperview];
    CGRect aFrame = UIScreen.mainScreen.bounds;
    CanvasView *aCanvasView = [generator canvasViewWithFrame:aFrame];
    self.aCanvasView = aCanvasView;
    [self.view addSubview:self.aCanvasView];
}

@end
