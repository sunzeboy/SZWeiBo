//
//  SZSeachBar.m
//  SZWeiBo
//
//  Created by sunze on 15/11/19.
//  Copyright © 2015年 sunzeboy. All rights reserved.
//

#import "SZSeachBar.h"

@implementation SZSeachBar

-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        self.font = [UIFont systemFontOfSize:13];
        self.background =[UIImage imageWithStretchableName:@"searchbar_textfield_background"];
         UIImageView *imageV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"searchbar_textfield_search_icon"]];
        imageV.width += 10;
        imageV.contentMode = UIViewContentModeCenter;
        self.leftView = imageV;
        self.leftViewMode = UITextFieldViewModeAlways;
    }

    return self;
}

@end
