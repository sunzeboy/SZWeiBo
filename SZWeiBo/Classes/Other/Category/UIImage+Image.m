//
//  UIImage+Image.m
//  SZWeiBo
//
//  Created by sunze on 15/11/19.
//  Copyright © 2015年 sunzeboy. All rights reserved.
//

#import "UIImage+Image.h"

@implementation UIImage (Image)



+ (instancetype)imageWithOriginalName:(NSString *)imageName
{
    UIImage *image = [UIImage imageNamed:imageName];
    
    return [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}

+ (instancetype)imageWithStretchableName:(NSString *)imageName
{
    UIImage *image = [UIImage imageNamed:imageName];
    return [image stretchableImageWithLeftCapWidth:image.size.width * 0.5 topCapHeight:image.size.height * 0.5];
}


@end
