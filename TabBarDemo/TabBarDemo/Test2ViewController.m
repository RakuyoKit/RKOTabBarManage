//
//  Test2ViewController.m
//  TabBarDemo
//
//  Created by Rakuyo on 2017/8/7.
//  Copyright © 2017年 Rakuyo. All rights reserved.
//

#import "Test2ViewController.h"
#import "RKOTabBarController.h"
#import "AppDelegate.h"

@interface Test2ViewController ()

@end

@implementation Test2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor =  [UIColor redColor];
    
}

- (void)viewWillAppear:(BOOL)animated {
//  隐藏tabbar
    [[RKOTabBarController sharedManager] hideTabView];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
