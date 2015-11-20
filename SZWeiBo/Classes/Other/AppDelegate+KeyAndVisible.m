//
//  AppDelegate+KeyAndVisible.m
//  SZWeiBo
//
//  Created by sunze on 15/11/19.
//  Copyright © 2015年 sunzeboy. All rights reserved.
//

#import "AppDelegate+KeyAndVisible.h"
#import "SZTabBarcontroller.h"
@implementation AppDelegate (KeyAndVisible)

// 补充：控制器的view
// UITabBarController控制器的view在一创建控制器的时候就会加载view
// UIViewController的view，才是懒加载。
-(void)KeyAndVisible
{
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    SZTabBarcontroller *tabVC = [[SZTabBarcontroller alloc] init];
    self.window.rootViewController = tabVC;
    [self.window makeKeyAndVisible];
    // makeKeyAndVisible底层实现
    // 1. application.keyWindow = self.window
    // 2. self.window.hidden = NO;
}

@end
