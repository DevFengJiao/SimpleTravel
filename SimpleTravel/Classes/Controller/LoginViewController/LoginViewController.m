//
//  LoginViewController.m
//  SimpleTravel
//
//  Created by hzyx01 on 17/3/29.
//  Copyright © 2017年 hzyx01. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()
@property (nonatomic,assign) void(^block)();
@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    int valut = 10;
    void(^blockC)() = ^{
        NSLog(@"just a block == %d",valut);
    };
    NSLog(@"%@",blockC);
    _block = blockC;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
