//
//  BHelper.h
//  NavigationControllerDemo
//
//  Created by gewei on 2020/3/11.
//  Copyright © 2020 gewei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BHelper : NSObject
- (instancetype)initWithFromViewController:(UIViewController *)paViewController pushOrPresent:(BOOL)isPush;
- (void)takePhoto;
@end

NS_ASSUME_NONNULL_END
