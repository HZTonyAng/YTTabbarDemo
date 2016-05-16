//
//  MiuTarbar.h
//  pod
//
//  Created by TonyAng on 16/5/16.
//  Copyright © 2016年 TonyAng. All rights reserved.
//
#import "MiuButton.h"
#import <UIKit/UIKit.h>
@protocol MiutabbarProtocol <NSObject>

/**
 *  控制器跳转
 *
 *  @param index 选中的下标
 */

- (void)ChangeControllerWithIndex:(NSInteger)index;

@end

@interface MiuTabBar : UIView

/**
 *  item的标题字体大小
 */
@property (nonatomic,assign) CGFloat titleSize;

/**
 *  item的标题字体颜色
 */
@property (nonatomic,strong) UIColor * titleColor;
/**
 *  item的标题选中字体颜色
 */
@property (nonatomic,strong) UIColor * titleColorSeleted;

/**
 *  选中的item;
 */
@property (nonatomic,assign) MiuButton * seletetItem;
/**
 *  选中的下标
 */
@property (nonatomic,assign) NSInteger  seleteIndex;

/**
 *  弹性动画系数
 */
@property (nonatomic,assign) CGFloat  ScaleRatio;

/*
 * Bounciness 反弹－影响动画作用的参数的变化幅度
 * Speed 速度
 * Tension 拉力－影响回弹力度以及速度
 * Friction 摩擦力－如果开启，动画会不断重复，幅度逐渐削弱，直到停止。
 * Mass 质量－细微的影响动画的回弹力度以及速度
 
 Tension，Friction，Mass 这三个参数的作用很微妙，需要你在示例程序里去仔细体会。
 */

@property (nonatomic,assign) CGFloat  springBounciness;
@property (nonatomic,assign) CGFloat  springSpeed;
@property (nonatomic,assign) CGFloat  dynamicsMass;
@property (nonatomic,assign) CGFloat  dynamicsFriction;

/**
 *  图标名称
 */
@property (nonatomic,copy) NSString * imageName;
/**
 *  代理
 */
@property (nonatomic,weak) id <MiutabbarProtocol> delegate;

- (void)SetupItemsWithItem:(NSArray *)itemArray;

@end
