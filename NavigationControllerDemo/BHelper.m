//
//  BHelper.m
//  NavigationControllerDemo
//
//  Created by gewei on 2020/3/11.
//  Copyright © 2020 gewei. All rights reserved.
//

#import "BHelper.h"
#import "BViewController.h"
@interface BHelper()
@property (nonatomic, strong) UIViewController *paViewController;
@property (nonatomic, assign) BOOL isPush;
@end

@implementation BHelper

- (instancetype)initWithFromViewController:(UIViewController *)paViewController pushOrPresent:(BOOL)isPush {
    if (self = [super init]) {
        _isPush = isPush;
        _paViewController = paViewController;
    }
    return self;
}

- (void)takePhoto {
    if (_isPush) {
        BViewController *vcBNew = [[BViewController alloc] init];
        vcBNew.backBlock = ^(BViewController *vcB) {
            [vcB.navigationController popViewControllerAnimated:YES];
        };
        [_paViewController.navigationController pushViewController:vcBNew animated:YES];
    } else {
        BViewController *vcBNew = [[BViewController alloc] init];
        vcBNew.modalPresentationStyle = UIModalPresentationFullScreen;
        vcBNew.backBlock = ^(BViewController *vcB) {
            [vcB dismissViewControllerAnimated:YES completion:nil];
        };
        [_paViewController presentViewController:vcBNew animated:YES completion:nil];
    }
}

@end
