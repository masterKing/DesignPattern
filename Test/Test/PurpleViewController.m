

//
//  PurpleViewController.m
//  Test
//
//  Created by Franky on 2018/12/5.
//  Copyright © 2018 Franky. All rights reserved.
//

#import "PurpleViewController.h"

@interface PurpleViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *numericTextField;
@property (weak, nonatomic) IBOutlet UITextField *alphaTextField;

@end

@implementation PurpleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField == self.numericTextField) {
        NSLog(@"数字textField");
    }else if (textField == self.alphaTextField) {
        NSLog(@"字母textField");
    }
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
