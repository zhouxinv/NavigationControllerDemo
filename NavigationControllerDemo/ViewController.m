//
//  ViewController.m
//  NavigationControllerDemo
//
//  Created by gewei on 2020/3/11.
//  Copyright © 2020 gewei. All rights reserved.
//

#import "ViewController.h"
#import "AViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btnPresent = [[UIButton alloc] init];
    [btnPresent setTitle:@"present控制器" forState:UIControlStateNormal];
    btnPresent.frame = CGRectMake(100, 100, 200, 30);
    btnPresent.backgroundColor = [UIColor redColor];
    [btnPresent addTarget:self action:@selector(onClickBtnPresent:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnPresent];
}

- (void)onClickBtnPresent:(UIButton *)sender {
    AViewController *vcA = [[AViewController alloc] init];
    UINavigationController *naviController = [[UINavigationController alloc] initWithRootViewController:vcA];
    naviController.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:naviController animated:YES completion:nil];
}


@end
