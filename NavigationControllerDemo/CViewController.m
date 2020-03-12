//
//  CViewController.m
//  NavigationControllerDemo
//
//  Created by gewei on 2020/3/11.
//  Copyright © 2020 gewei. All rights reserved.
//

#import "CViewController.h"
#import "BViewController.h"
#import "AViewController.h"

@interface CViewController ()

@end

@implementation CViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blueColor];
    self.navigationItem.title = @"C ViewController";
    UILabel *labTitle = [[UILabel alloc] init];
    labTitle.text = @"C ViewController";
    [self.view addSubview:labTitle];
    labTitle.frame = CGRectMake(100, 88, 200, 40);
    
    UIButton *btnPresent = [[UIButton alloc] init];
    [btnPresent setTitle:@"dismissB控制器" forState:UIControlStateNormal];
    btnPresent.frame = CGRectMake(100, 200, 200, 30);
    btnPresent.backgroundColor = [UIColor redColor];
    [btnPresent addTarget:self action:@selector(onClickBtnPresent:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnPresent];
    
    UIButton *btnPush = [[UIButton alloc] init];
    [btnPush setTitle:@"popB控制器" forState:UIControlStateNormal];
    btnPush.frame = CGRectMake(100, 300, 200, 30);
    btnPush.backgroundColor = [UIColor redColor];
    [btnPush addTarget:self action:@selector(onClickBtnPush:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnPush];
    NSLog(@"%@", self.childViewControllers);
    NSLog(@"%@", self.navigationController.viewControllers);
}

- (void)onClickBtnPresent:(UIButton *)sender {
//    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
    UIViewController *rootVC = self.presentingViewController;
    while (rootVC.presentingViewController) {
        if ([rootVC isKindOfClass:[UINavigationController class]]) {
            break;
        } else  {
            rootVC = rootVC.presentingViewController;
        }
    }
    [rootVC dismissViewControllerAnimated:YES completion:nil];
}

- (void)onClickBtnPush:(UIButton *)sender {
    UIViewController *vcA = self.navigationController.viewControllers[0];
//    [vcA.navigationController popViewControllerAnimated:NO];
//
    
    [self.navigationController popToViewController:vcA animated:YES];
    
//    NSArray<__kindof UIViewController *> *arrVCTemps = self.navigationController.viewControllers;
//    NSMutableArray<__kindof UIViewController *> *arrVCs = [NSMutableArray arrayWithArray:arrVCTemps];
//    [arrVCTemps enumerateObjectsWithOptions:NSEnumerationReverse usingBlock:^(__kindof UIViewController * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
//        if ([obj isKindOfClass:[BViewController class]]) {
//            [arrVCs removeObject:obj];
//            *stop = YES;
//        }
//    }];
//    [self.navigationController setViewControllers:arrVCs animated:NO];
//
//    NSLog(@"%@", self.navigationController.viewControllers);
}

@end
