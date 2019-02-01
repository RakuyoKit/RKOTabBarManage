//
//  TestViewController.m
//  TabBarDemo
//
//  Created by Rakuyo on 2017/8/7.
//  Copyright © 2017年 Rakuyo. All rights reserved.
//

#import "TestViewController.h"
#import "Test2ViewController.h"
#import "RKOTabBarController.h"

@interface TestViewController () <RKOTabBarControllerDelegate>


@end

@implementation TestViewController


- (void)extraBtnClickedInTabBarController:(RKOTabBarController *)tabBarController {
    
    Test2ViewController *setTableVC = [[Test2ViewController alloc] init];
    
    [self presentViewController:setTableVC animated:YES completion:^{
        NSLog(@"123");
    }];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    [RKOTabBarController sharedManager].RKOTabBarControllerDelegate = self;
}



- (void)viewWillAppear:(BOOL)animated {

    // 显示内容
    [[RKOTabBarController sharedManager] showTabView];

}

#pragma mark tableView数据源方法
// 显示几组，可以不实现，不是实现也是默认一组。
-  (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

// 每一组显示几条数据,必须要实现。
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    
    
    cell.textLabel.text = @"我的发布";
    // 单元格最右边显示小箭头
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;

    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // 取消选中状态
    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    // 设置跳转
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    
    Test2ViewController *setTableVC = [[Test2ViewController alloc] init];
    // 设置子页面的Navigation title
    setTableVC.navigationItem.title = cell.textLabel.text;
    [self.navigationController pushViewController:setTableVC animated:YES];
    
}


@end
