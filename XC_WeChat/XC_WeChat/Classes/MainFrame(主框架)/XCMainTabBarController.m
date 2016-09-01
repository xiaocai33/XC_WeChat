//
//  XCMainTabBarController.m
//  XC_WeChat
//
//  Created by 小蔡 on 16/9/1.
//  Copyright © 2016年 xiaocai. All rights reserved.
//

#import "XCMainTabBarController.h"

#import "XCHomeTableViewController.h"
#import "XCContactsTableViewController.h"
#import "XCDiscoverTableViewController.h"
#import "XCMeTableViewController.h"

@implementation XCMainTabBarController

- (void)viewDidLoad{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self addItemController:[[XCHomeTableViewController alloc] init] title:@"微信" image:@"tabbar_mainframe" selectedImage:@"tabbar_mainframeHL"];
    [self addItemController:[[XCContactsTableViewController alloc] init] title:@"通讯录" image:@"tabbar_contacts" selectedImage:@"tabbar_contactsHL"];
    [self addItemController:[[XCDiscoverTableViewController alloc] init] title:@"发现" image:@"tabbar_discover" selectedImage:@"tabbar_discoverHL"];
    [self addItemController:[[XCMeTableViewController alloc] init] title:@"我" image:@"tabbar_me" selectedImage:@"tabbar_meHL"];

}

- (void)addItemController:(UIViewController *)vc title:(NSString *)title image:(NSString *)imageName selectedImage:(NSString *)selectedImage{
    vc.title = title;
    
    //设置默认文字效果
    NSMutableDictionary *textAttrs = [NSMutableDictionary dictionary];
    textAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:14];
    [vc.tabBarItem setTitleTextAttributes:textAttrs forState:UIControlStateNormal];
    
    //设置选中文字效果
    NSMutableDictionary *selectedTextAttrs = [NSMutableDictionary dictionary];
    selectedTextAttrs[NSForegroundColorAttributeName] = [UIColor colorWithRed:0 green:(190)/255.0 blue:(12)/255.0 alpha:1.0];
    [vc.tabBarItem setTitleTextAttributes:selectedTextAttrs forState:UIControlStateSelected];
    
    //设置图片效果
    vc.tabBarItem.image = [UIImage imageNamed:imageName];
    vc.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    //包装导航控制器
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    [self addChildViewController:nav];
}

@end
