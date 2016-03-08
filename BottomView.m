//
//  BottomView.m
//  realtimeExchange
//
//  Created by Terry on 3/6/16.
//  Copyright © 2016 Terry. All rights reserved.
//

#import "BottomView.h"
#import "BottomCellView.h"

@protocol BottomViewDelegate <NSObject>

-(void)exchange;
-(void)calculator;
-(void)like;
-(void)user;

@end

@interface BottomView ()
@property(nonatomic, retain) BottomCellView *exchangeView;
@property(nonatomic, retain) BottomCellView *calculatorView;
@property(nonatomic, retain) BottomCellView *likeView;
@property(nonatomic, retain) BottomCellView *userView;
@end

@implementation BottomView
- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        CGRect temp = CGRectMake(0, 488, self.frame.size.width, self.frame.size.height);
        self.frame = temp;
        UIView *bottomView = [[[NSBundle mainBundle] loadNibNamed:@"BottomView" owner:nil options:nil] lastObject];
        [self addSubview:bottomView];
    }
    return self;
}

- (void)exchange {
    
}

@end
