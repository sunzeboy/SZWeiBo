//
//  SZDiscoverViewController.m
//  SZWeiBo
//
//  Created by sunze on 15/11/19.
//  Copyright © 2015年 sunzeboy. All rights reserved.
//

#import "SZDiscoverViewController.h"
#import "SZSeachBar.h"



@interface SZDiscoverViewController ()

@end


@implementation SZDiscoverViewController

-(void)viewDidLoad
{
    [super viewDidLoad];
    
    SZSeachBar *searchBar = [[SZSeachBar alloc] initWithFrame:CGRectMake(0, 0, SZKWidth, 35)];
    searchBar.placeholder = NSLocalizedString(@"people all search", nil);
    
    self.navigationItem.titleView = searchBar;
}


@end
