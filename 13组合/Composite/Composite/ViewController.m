//
//  ViewController.m
//  Composite
//
//  Created by Franky on 2019/4/3.
//  Copyright © 2019 Franky. All rights reserved.
//

#import "ViewController.h"
#import "Dot.h"
#import "Stroke.h"
#import "Vertex.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    Dot *newDot = [[Dot alloc] init];
    Stroke *parentStroke = [[Stroke alloc] init];
    
    [parentStroke addMark:newDot];
    
    
    // ...
    Vertex *newVertex = [[Vertex alloc] init];
    Stroke *newStroke = [[Stroke alloc] init];
    
    [newStroke addMark:newVertex];
    
    [parentStroke addMark:newStroke];
    
}


@end
