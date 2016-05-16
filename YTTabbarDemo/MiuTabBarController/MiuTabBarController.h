//
//  MiuTabBarController.h
//  pod
//
//  Created by TonyAng on 16/5/16.
//  Copyright © 2016年 TonyAng. All rights reserved.
//
#import "MiuTabBar.h"
#import <UIKit/UIKit.h>

@interface MiuTabBarController : UITabBarController
@property (nonatomic,strong)  MiuTabBar *Miutabbar;

+ (MiuTabBarController *)initWithControllerItme:(NSArray *)itemsArray;

@end
