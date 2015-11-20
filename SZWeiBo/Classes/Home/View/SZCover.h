//
//  SZCover.h
//  SZWeiBo
//
//  Created by sunze on 15/11/19.
//  Copyright © 2015年 sunzeboy. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SZCover;
@protocol SZCoverDelegate <NSObject>

@optional
// 点击蒙板的时候调用
- (void)coverDidClickCover:(SZCover *)cover;

@end

@interface SZCover : UIView


@property (nonatomic,assign) BOOL dimBackground;

@property (nonatomic,weak) id<SZCoverDelegate> delegate;


+(instancetype)show;


@end
