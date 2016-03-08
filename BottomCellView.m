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
@property (weak, nonatomic) IBOutlet UIImageView *icon;

//文字
@property (weak, nonatomic) IBOutlet UILabel *label;


@end

@implementation BottomCellView

+ (instancetype)bottomCellView {
    return  [[self alloc] init];
}

+(instancetype)bottomCellViewWithImage:(UIImage *)image andLabel:(UILabel *)label {
    BottomCellView *bw = [[self alloc] init];
    [bw setIcon:image];
    [bw setLabel:label];
    return bw;
}

//推荐重写initWithFrame:方法，init方法会自动调用initWithFrame:方法
//另外，最好不要在这里使用frame的值，因为frame可能为空
- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        
    }
    return self;
}

- (void)setActionWithSelector:(SEL)selector {
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:selector];
    [self addGestureRecognizer:tapGesture];
}
@end
