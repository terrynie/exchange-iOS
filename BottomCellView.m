//
//  BottomCellView.m
//  realtimeExchange
//
//  Created by Terry on 3/6/16.
//  Copyright © 2016 Terry. All rights reserved.
//

#import "BottomCellView.h"

@interface BottomCellView ()
//小图标
@property(nonatomic, retain) UIImageView *icon;
//文字
@property(nonatomic, retain) UILabel *label;

@end

@implementation BottomCellView

+ (instancetype)bottomCellView {
    return  [[self alloc] init];
}

//推荐重写initWithFrame:方法，init方法会自动调用initWithFrame:方法
//另外，最好不要在这里使用frame的值，因为frame可能为空
- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor redColor];
    }
    return self;
}

- (void)layoutSubviews {
    CGFloat width = self.frame.size.width;
    CGFloat height = self.frame.size.height;
    //设置底部按钮内容的大小
    _icon = [[UIImageView alloc] initWithFrame:CGRectMake(width*0.35, height*0.1, width*0.3, height*0.3)];
    _icon.image = [UIImage imageNamed:@"t"];
    _label = [[UILabel alloc] initWithFrame:CGRectMake(width*0.35, height*0.5, width*.6, height*0.3)];
    [self addSubview:_icon];
    [self addSubview:_label];
}
@end
