//
//  BViewController.m
//  NavigationControllerDemo
//
//  Created by gewei on 2020/3/11.
//  Copyright © 2020 gewei. All rights reserved.
//

#import "BViewController.h"
#import "CViewController.h"

@interface BViewController ()

@end

@implementation BViewController



- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor greenColor];
    self.navigationItem.title = @"B ViewController";
    
    UILabel *labTitle = [[UILabel alloc] init];
    labTitle.text = @"B ViewController";
    [self.view addSubview:labTitle];
    labTitle.frame = CGRectMake(100, 88, 200, 40);
    
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
    
    UIButton *btnComplete = [[UIButton alloc] init];
    [btnComplete setTitle:@"完成任务启用回调" forState:UIControlStateNormal];
    btnComplete.frame = CGRectMake(100, 300, 200, 30);
    btnComplete.backgroundColor = [UIColor redColor];
    [btnComplete addTarget:self action:@selector(onClickBtnComplete:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnComplete];
}

-(void)onClickBtnComplete:(UIButton *)sender {
    if (self.backBlock) {
        self.backBlock(self);
    }
}

- (void)onClickBtnPresent:(UIButton *)sender {
    CViewController *vcC = [[CViewController alloc] init];
    vcC.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:vcC animated:YES completion:nil];
}

- (void)onClickBtnPush:(UIButton *)sender {
    CViewController *vcC = [[CViewController alloc] init];
    [self.navigationController pushViewController:vcC animated:YES];
}


@end
