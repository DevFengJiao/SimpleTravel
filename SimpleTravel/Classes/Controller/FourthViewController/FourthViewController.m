//
//  FourthViewController.m
//  SimpleTravel
//
//  Created by hzyx01 on 17/4/21.
//  Copyright © 2017年 hzyx01. All rights reserved.
//

#import "FourthViewController.h"

@interface FourthViewController ()
//@property(nonatomic, assign) void(^block)();

@property(nonatomic, weak) void(^blockA)();
@end

@implementation FourthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    int value = 10;
//    void(^blockC)() = ^{
//        NSLog(@"just a block === %d", value);
//    };
//    
//    NSLog(@"%@", blockC);
//    _block = blockC;
    void(^ __weak blockA)() = ^{
        NSLog(@"just a block");
    };
    
    _blockA = blockA;
    
    
    
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
