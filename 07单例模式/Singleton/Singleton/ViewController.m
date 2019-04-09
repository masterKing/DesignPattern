//
//  ViewController.m
//  Singleton
//
//  Created by Franky on 2019/4/9.
//  Copyright © 2019 Franky. All rights reserved.
//

#import "ViewController.h"
#import "LogManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    LogManager *manager0 = [[LogManager alloc] init];
    NSLog(@"%@",manager0);
    
    LogManager *manager1 = [LogManager sharedManager];
    NSLog(@"%@",manager1);
    
    LogManager *manager2 = [manager0 copy];
    NSLog(@"%@",manager2);
    
    LogManager *manager3 = [manager0 mutableCopy];
    NSLog(@"%@",manager3);
    
    // 打印结果四个对象的地址都是同一个地址
}


@end
