//
//  ViewController.m
//  StrategyPattern
//
//  Created by Franky on 2018/12/6.
//  Copyright © 2018 Franky. All rights reserved.
//

#import "ViewController.h"
#import "NumericInputValidator.h"
#import "CustomTextField.h"

@interface ViewController () <UITextFieldDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.alphaTextField addTarget:self action:@selector(textFieldValueChanged:) forControlEvents:UIControlEventEditingChanged];
    [self.numberTextField addTarget:self action:@selector(textFieldValueChanged:) forControlEvents:UIControlEventEditingChanged];
}

- (void)textFieldValueChanged:(UITextField *)textField{
    if ([textField isKindOfClass:[CustomTextField class]]) {
        [(CustomTextField *)textField validate];
    }
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}

#pragma mark -
#pragma mark UITextFieldDelegate
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if ([textField isKindOfClass:[CustomTextField class]]) {
        [(CustomTextField *)textField validate];
    }
}


/*
 * 什么是策略模式...我个人感觉讲一些概念都太抽象了...就讲两个具体的例子m吧
 
 策略模式是针对类来讲的...
 一个类中的某些方法,不太适合使用继承的时候,也不太适合使用协议的时候,可以考虑策略模式,这是从鸭子的故事里面领悟到的
 
 一个类中的方法里面,有许多判断条件
 
 
 一: 鸭子的故事
 给鸭子类的飞行行为和叫行为增加
 
 二: 给UITextField加一个输入内容的校检器
 
 */
@end
