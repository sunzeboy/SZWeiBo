//
//  SZTabBarcontroller.m
//  SZWeiBo
//
//  Created by sunze on 15/11/19.
//  Copyright © 2015年 sunzeboy. All rights reserved.
//

#import "SZTabBarcontroller.h"

#import "UIImage+Image.h"

#import "SZDiscoverViewController.h"
#import "SZHomeviewController.h"
#import "SZMessageViewController.h"
#import "SZProfileViewController.h"

#import "SZNavigationController.h"

#import "SZTabBar.h"

@interface SZTabBarcontroller ()<SZTabBarDelegate>

@property (nonatomic, strong) NSMutableArray *items;


@end


@implementation SZTabBarcontroller

-(NSMutableArray *)items
{
    if (!_items) {
        _items = [NSMutableArray array];
    }
    return _items;
}


-(void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setUpAllChildViewController];
    [self setUpTabBar];
}

#pragma mark - 设置tabBar
- (void)setUpTabBar
{
    SZTabBar *tabBar = [[SZTabBar alloc] initWithFrame:self.tabBar.frame];
    tabBar.backgroundColor = [UIColor whiteColor];
    tabBar.delegate =self;
    tabBar.items = self.items;
    [self.view addSubview:tabBar];
    [self.tabBar removeFromSuperview];

}



#pragma mark - 添加所有的子控制器
- (void)setUpAllChildViewController
{
    SZHomeviewController *home = [[SZHomeviewController alloc] init];
    [self setUpOneChildViewController:home image:[UIImage imageNamed:@"tabbar_home"] selectedImage:[UIImage imageWithOriginalName:@"tabbar_home_selected"] title:NSLocalizedString(@"home",nil)];
    
    
    
    SZMessageViewController *message = [[SZMessageViewController alloc] init];
    [self setUpOneChildViewController:message image:[UIImage imageNamed:@"tabbar_message_center"] selectedImage:[UIImage imageWithOriginalName:@"tabbar_message_center_selected"] title:NSLocalizedString(@"message",nil)];
    
    
    
    SZDiscoverViewController *discover = [[SZDiscoverViewController alloc] init];
    [self setUpOneChildViewController:discover image:[UIImage imageNamed:@"tabbar_discover"] selectedImage:[UIImage imageWithOriginalName:@"tabbar_discover_selected"] title:NSLocalizedString(@"discover",nil)];
    
    
    // 我
    SZProfileViewController *profile = [[SZProfileViewController alloc] init];
    [self setUpOneChildViewController:profile image:[UIImage imageNamed:@"tabbar_profile"] selectedImage:[UIImage imageWithOriginalName:@"tabbar_profile_selected"] title:NSLocalizedString(@"profile",nil)];
    

}

// navigationItem决定导航条上的内容
// 导航条上的内容由栈顶控制器的navigationItem决定

#pragma mark - 添加一个子控制器
- (void)setUpOneChildViewController:(UIViewController *)vc image:(UIImage *)image selectedImage:(UIImage *)selectedImage title:(NSString *)title
{
    vc.title = title;
    vc.tabBarItem.image = image;
    vc.tabBarItem.selectedImage = selectedImage;
    
    // 保存tabBarItem模型到数组
    [self.items addObject:vc.tabBarItem];
    
    SZNavigationController  *nav = [[SZNavigationController alloc] initWithRootViewController:vc];
    [self addChildViewController:nav];

}

@end
