//
//  XCMainTabBarController.m
//  XC_WeChat
//
//  Created by 小蔡 on 16/9/1.
//  Copyright © 2016年 xiaocai. All rights reserved.
//

#import "XCMainTabBarController.h"

@implementation XCMainTabBarController

- (void)viewDidLoad{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    //NSArray *array = @[];

    
    UIViewController *vc1 = [[UIViewController alloc] init];
    vc1.view.backgroundColor = [UIColor greenColor];
    vc1.tabBarItem.title = @"vc1";
    [self addChildViewController:vc1];
    
    UIViewController *vc2 = [[UIViewController alloc] init];
    vc2.view.backgroundColor = [UIColor grayColor];
    vc2.tabBarItem.title = @"vc2";
    [self addChildViewController:vc2];
    
    UIViewController *vc3 = [[UIViewController alloc] init];
    vc3.view.backgroundColor = [UIColor blueColor];
    vc3.tabBarItem.title = @"vc3";
    [self addChildViewController:vc3];
    
    UIViewController *vc4 = [[UIViewController alloc] init];
    vc4.view.backgroundColor = [UIColor redColor];
    vc4.tabBarItem.title = @"vc4";
    [self addChildViewController:vc4];
}

@end
