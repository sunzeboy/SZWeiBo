//
//  SZPopMenu.h
//  SZWeiBo
//
//  Created by sunze on 15/11/19.
//  Copyright © 2015年 sunzeboy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SZPopMenu : UIImageView


/**
 *  显示弹出菜单
 */
+ (instancetype)showInRect:(CGRect)rect;

/**
 *  隐藏弹出菜单
 */
+ (void)hide;

// 内容视图
@property (nonatomic, weak) UIView *contentView;


@end
