//
//  SZHomeviewController.m
//  SZWeiBo
//
//  Created by sunze on 15/11/19.
//  Copyright © 2015年 sunzeboy. All rights reserved.
//

#import "SZHomeviewController.h"
#import "UIBarButtonItem+SZItem.h"
#import "SZTitleButton.h"
#import "SZCover.h"
#import "SZPopMenu.h"
#import "SZOneViewController.h"
@interface SZHomeviewController ()<SZCoverDelegate>

@property (nonatomic, weak) SZTitleButton *titleButton;

@property (nonatomic, strong) SZOneViewController *one;

@end

@implementation SZHomeviewController


-(SZOneViewController *)one
{
    if (_one == nil) {
        _one = [[SZOneViewController alloc] init];
    }
    
    return _one;

}

// UIBarButtonItem:决定导航条上按钮的内容
// UINavigationItem:决定导航条上内容
// UITabBarItem:决定tabBar上按钮的内容
// ios7之后，会把tabBar上和导航条上的按钮渲染
// 导航条上自定义按钮的位置是由系统决定，尺寸才需要自己设置。
- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 设置导航条内容
    [self setUpNavgationBar];
    
}

#pragma mark - 设置导航条
- (void)setUpNavgationBar
{
    // 左边
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem barButtonItemWithImage:[UIImage imageNamed:@"navigationbar_friendsearch"] highImage:[UIImage imageNamed:@"navigationbar_friendsearch_highlighted"] target:self action:@selector(friendsearch) forControlEvents:UIControlEventTouchUpInside];
    
    // 右边
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem barButtonItemWithImage:[UIImage imageNamed:@"navigationbar_pop"] highImage:[UIImage imageNamed:@"navigationbar_pop_highlighted"] target:self action:@selector(pop) forControlEvents:UIControlEventTouchUpInside];
    
    // titleView
    SZTitleButton *titleButton = [SZTitleButton buttonWithType:UIButtonTypeCustom];
    _titleButton = titleButton;
    
    [titleButton setTitle:@"首页" forState:UIControlStateNormal];
    [titleButton setImage:[UIImage imageNamed:@"navigationbar_arrow_up"] forState:UIControlStateNormal];
    [titleButton setImage:[UIImage imageNamed:@"navigationbar_arrow_down"] forState:UIControlStateSelected];
    
    // 高亮的时候不需要调整图片
    titleButton.adjustsImageWhenHighlighted = NO;
    
    [titleButton addTarget:self action:@selector(titleClick:) forControlEvents:UIControlEventTouchUpInside];
    
    self.navigationItem.titleView = titleButton;

}

// 以后只要显示在最前面的控件，一般都加在主窗口
// 点击标题按钮
- (void)titleClick:(UIButton *)button
{
    button.selected = !button.selected;
    
    // 弹出蒙板
    SZCover *cover = [SZCover show];
    cover.delegate = self;
    
    
    // 弹出pop菜单
    CGFloat popW = 200;
    CGFloat popX = (self.view.width - 200) * 0.5;
    CGFloat popH = popW;
    CGFloat popY = 55;
    SZPopMenu *menu = [SZPopMenu showInRect:CGRectMake(popX, popY, popW, popH)];
    menu.contentView = self.one.view;
    
}



// 点击蒙板的时候调用
- (void)coverDidClickCover:(SZCover *)cover
{
    // 隐藏pop菜单
    [SZPopMenu hide];
    
    _titleButton.selected = NO;
    
}

- (void)friendsearch
{
    //    NSLog(@"%s",__func__);
}

- (void)pop
{
    //    [_titleButton setTitle:@"首页首页" forState:UIControlStateNormal];
    [_titleButton setImage:nil forState:UIControlStateNormal];
    //    [_titleButton sizeToFit];
}



@end
