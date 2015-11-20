//
//  SZTabBar.h
//  SZWeiBo
//
//  Created by sunze on 15/11/19.
//  Copyright © 2015年 sunzeboy. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SZTabBar;

@protocol SZTabBarDelegate <NSObject>

@optional
-(void)tabBar:(SZTabBar *)tabBar didClickButton:(NSInteger)index;

@end

@interface SZTabBar : UIView

@property (nonatomic,strong) NSArray *items;

@property (nonatomic,weak) id<SZTabBarDelegate> delegate;


@end
