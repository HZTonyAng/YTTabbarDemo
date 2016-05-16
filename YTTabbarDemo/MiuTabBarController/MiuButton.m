//
//  MiuButton.m
//  pod
//
//  Created by TonyAng on 16/5/16.
//  Copyright © 2016年 TonyAng. All rights reserved.
//
#import <POP.h>
#import "MiuButton.h"

@implementation MiuButton

- (instancetype)init
{
    self = [super init];
    
    if (self) {
        
        // 初始化值
        self.titleColor = [UIColor grayColor];
        self.titleColorSeleted = [UIColor grayColor];
        self.titleSize = 12;
        self.imageView = [UIImageView new];
        self.imageView.contentMode = UIViewContentModeScaleAspectFit;
        self.titleLable = [UILabel new];
        self.titleLable.font = [UIFont systemFontOfSize:self.titleSize];
        self.titleLable.textColor = self.titleColor;
        self.titleLable.textAlignment = NSTextAlignmentCenter;
        [self addObserver:self forKeyPath:@"seleted" options:NSKeyValueObservingOptionNew context:nil];
        
        [self addSubview:self.imageView];
        [self addSubview:self.titleLable];
        
        
        
    }
    return self;
}

- (void)layoutSubviews{
    
    [super layoutSubviews];
    
    self.imageView.frame = CGRectMake(0, 5, self.frame.size.width, self.frame.size.height * 3 / 4);
    
    if (self.imageView.image) {
        CGRect rect = self.imageView.frame;
        rect.size = self.imageView.image.size;
        self.imageView.frame = rect;
    }
    
    
    self.titleLable.frame = CGRectMake(0, self.imageView.frame.size.height + 6, self.frame.size.width, self.frame.size.height * 1 / 4 + 5);
    
    CGPoint center = self.imageView.center;
    center.x = self.titleLable.center.x;
    self.imageView.center = center;
}


- (void)setUpbuttonWithDict:(NSDictionary *)dict
{
    [dict enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop)
    {
        [self setImageWithImageName:obj];
        [self setTitleStute];
        self.titleLable.text = key;
    }];
    
}

- (void)setImageWithImageName:(NSString *)name

{
    self.imageName = name;
    
    if (self.seleted == YES) {
        NSString *seletname = [NSString stringWithFormat:@"%@_selected",name];
        self.imageView.image = [UIImage imageNamed:seletname];
        
    }else{
        self.titleLable.textColor = self.titleColor;
         self.imageView.image = [UIImage imageNamed:name];
    }
   
}


- (void)setTitleStute
{
    self.titleLable.textColor = self.seleted ?self.titleColorSeleted : self.titleColor;
}


- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    [self setImageWithImageName:self.imageName];
    [self setTitleStute];
}

- (void)dealloc
{
    [self removeObserver:self forKeyPath:@"seleted"];
    
}
@end
