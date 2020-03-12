//
//  BViewController.h
//  NavigationControllerDemo
//
//  Created by gewei on 2020/3/11.
//  Copyright © 2020 gewei. All rights reserved.
//

#import <UIKit/UIKit.h>
@class BViewController;
typedef void(^completeBlock)(BViewController * _Nullable vcB);

NS_ASSUME_NONNULL_BEGIN

@interface BViewController : UIViewController
@property (nonatomic, copy) completeBlock backBlock;
@end

NS_ASSUME_NONNULL_END
