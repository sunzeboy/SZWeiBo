//
//  UIBarButtonItem+SZItem.m
//  SZWeiBo
//
//  Created by sunze on 15/11/19.
//  Copyright © 2015年 sunzeboy. All rights reserved.
//

#import "UIBarButtonItem+SZItem.h"

@implementation UIBarButtonItem (SZItem)
+ (UIBarButtonItem *)barButtonItemWithImage:(UIImage *)image highImage:(UIImage *)highImage target:(id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents
{
    // btn
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setBackgroundImage:image forState:UIControlStateNormal];
    [btn setBackgroundImage:highImage forState:UIControlStateHighlighted];
    [btn sizeToFit];
    
    [btn addTarget:target action:action forControlEvents:controlEvents];
    
    return  [[UIBarButtonItem alloc] initWithCustomView:btn];
}
@end
