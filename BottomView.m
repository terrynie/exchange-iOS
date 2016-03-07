//
//  BottomView.m
//  realtimeExchange
//
//  Created by Terry on 3/6/16.
//  Copyright © 2016 Terry. All rights reserved.
//

#import "BottomView.h"
#import "BottomCellView.h"

@interface BottomView ()

@property(nonatomic, retain) BottomCellView *exchange;
@property(nonatomic, retain) BottomCellView *calculator;
@property(nonatomic, retain) BottomCellView *attention;
@property(nonatomic, retain) BottomCellView *user;
@end

@implementation BottomView

-(instancetype)initWithFrame:(CGRect)frame {
    if (self=[super initWithFrame:frame]) {
        CGFloat width = self.frame.size.width;
        CGFloat height = self.frame.size.height;
        CGFloat cellWidth = width*0.25;
        //创建底部按钮并添加到父视图中
        [self addSubview:_exchange = [BottomCellView bottomCellView]];
        [self addSubview:_calculator = [BottomCellView bottomCellView]];
        [self addSubview:_attention = [BottomCellView bottomCellView]];
        [self addSubview:_user = [BottomCellView bottomCellView]];
        //设置底部按钮视图的大小
        _exchange.frame = CGRectMake(0, 0, cellWidth, height);
        _calculator.frame = CGRectMake(cellWidth, 0, cellWidth, height);
        _attention.frame = CGRectMake(cellWidth*2, 0, cellWidth, height);
        _user.frame = CGRectMake(cellWidth*3, 0, cellWidth, height);
    }
    return self;
}

//切换菜单
-(void)changeMenu {
    
}

@end
