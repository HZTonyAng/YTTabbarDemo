//
//  HomeViewController.m
//  YTTabbarDemo
//
//  Created by TonyAng on 16/5/16.
//  Copyright © 2016年 TonyAng. All rights reserved.
//

#import "HomeViewController.h"
#import "ViewController.h"
@interface HomeViewController (){
    UIView *view;
}
@property (nonatomic,strong) UIButton *tempBtn;
@end

@implementation HomeViewController

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    self.tabBarController.tabBar.hidden = NO;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"首页";
    self.tabBarController.tabBar.hidden = NO;
    self.view.backgroundColor = [UIColor colorWithRed:arc4random()%256/256.0 green:arc4random()%256/256.0 blue:arc4random()%256/256.0 alpha:1.0];
    self.tempBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.tempBtn.frame = CGRectMake(0, 0, 100, 100);
    self.tempBtn.center = self.view.center;
    self.tempBtn.backgroundColor = [UIColor redColor];
    [self.tempBtn addTarget:self action:@selector(Action) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.tempBtn];
}

-(void)Action{
    ViewController *View = [ViewController new];
    [self.navigationController pushViewController:View animated:YES];
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
