//
//  AViewController.m
//  NavigationControllerDemo
//
//  Created by gewei on 2020/3/11.
//  Copyright © 2020 gewei. All rights reserved.
//

#import "AViewController.h"
#import "BViewController.h"
#import "CViewController.h"
#import "BHelper.h"

@interface AViewController ()

@end

@implementation AViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
    self.navigationItem.title = @"A ViewController";
    UIButton *btnPresent = [[UIButton alloc] init];
    [btnPresent setTitle:@"present控制器" forState:UIControlStateNormal];
    btnPresent.frame = CGRectMake(100, 100, 200, 30);
    btnPresent.backgroundColor = [UIColor redColor];
    [btnPresent addTarget:self action:@selector(onClickBtnPresent:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnPresent];
    
    UIButton *btnPush = [[UIButton alloc] init];
    [btnPush setTitle:@"push控制器" forState:UIControlStateNormal];
    btnPush.frame = CGRectMake(100, 200, 200, 30);
    btnPush.backgroundColor = [UIColor redColor];
    [btnPush addTarget:self action:@selector(onClickBtnPush:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnPush];
    
    UIButton *btnPushHelper = [[UIButton alloc] init];
    [btnPushHelper setTitle:@"push Hepler" forState:UIControlStateNormal];
    btnPushHelper.frame = CGRectMake(100, 300, 200, 30);
    btnPushHelper.backgroundColor = [UIColor redColor];
    [btnPushHelper addTarget:self action:@selector(onClickBtnPushHelper:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnPushHelper];
    
    UIButton *btnPresentHelper = [[UIButton alloc] init];
    [btnPresentHelper setTitle:@"present Hepler" forState:UIControlStateNormal];
    btnPresentHelper.frame = CGRectMake(100, 400, 200, 30);
    btnPresentHelper.backgroundColor = [UIColor redColor];
    [btnPresentHelper addTarget:self action:@selector(onClickBtnPresentHelper:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnPresentHelper];
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
}

- (void)onClickBtnPresent:(UIButton *)sender {
    BViewController *vcB = [[BViewController alloc] init];
    vcB.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:vcB animated:YES completion:nil];
}

- (void)onClickBtnPush:(UIButton *)sender {
    BViewController *vcB = [[BViewController alloc] init];
    [self.navigationController pushViewController:vcB animated:YES];
}

- (void)onClickBtnPushHelper:(UIButton *)sender {
    BHelper *bHelper = [[BHelper alloc] initWithFromViewController:self pushOrPresent:YES];
    [bHelper takePhoto];
}

- (void)onClickBtnPresentHelper:(UIButton *)sender {
    BHelper *bHelper = [[BHelper alloc] initWithFromViewController:self pushOrPresent:NO];
    [bHelper takePhoto];
}


@end
