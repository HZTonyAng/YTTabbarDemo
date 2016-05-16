//
//  MiuButton.h
//  pod
//
//  Created by TonyAng on 16/5/16.
//  Copyright © 2016年 TonyAng. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface MiuButton : UIView

@property (nonatomic,copy) NSString * imageName;
/**
 *  按钮图标
 */
@property (nonatomic,strong) UIImageView * imageView;
/**
 *  按钮标题
 */
@property (nonatomic,strong) UILabel * titleLable;
/**
 *  按钮标题字体号
 */
@property (nonatomic,assign) CGFloat  titleSize;
/**
 *  字体颜色
 */
@property (nonatomic,strong) UIColor * titleColor;
/**
 *  字体颜色(选中)
 */
@property (nonatomic,strong) UIColor * titleColorSeleted;
/**
 *  按钮是否被选中
 */
@property (nonatomic,assign,getter=isSeleted) BOOL seleted;

///根据字典设置按钮样式
- (void)setUpbuttonWithDict:(NSDictionary *)dict;
///设置标题状态
- (void)setTitleStute;
///设置按钮图标
- (void)setImageWithImageName:(NSString *)name;

@end

