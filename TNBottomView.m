//
//  TNBottomView.m
//  realtimeExchange
//
//  Created by Terry on 3/11/16.
//  Copyright © 2016 Terry. All rights reserved.
//

#import "TNBottomView.h"
@interface TNBottomView()
@property (weak, nonatomic) IBOutlet UIButton *exchangeButton;
@property (weak, nonatomic) IBOutlet UIButton *calculatorButton;
@property (weak, nonatomic) IBOutlet UIButton *myLikedButton;@property (weak, nonatomic) IBOutlet UIButton *userCenterButton;
@end
@implementation TNBottomView
- (instancetype)initWithFrame:(CGRect)frame {
    frame = CGRectMake(0, [UIScreen mainScreen].bounds.size.height*0.9, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height*0.15);

    [_exchangeButton setImage:[UIImage imageNamed:@"money-exchange"] forState:UIControlStateSelected];
    [_calculatorButton setImage:[UIImage imageNamed:@"calculator"] forState:UIControlStateSelected];
    [_myLikedButton setImage:[UIImage imageNamed:@"add-a-like"] forState:UIControlStateSelected];
    [_userCenterButton setImage:[UIImage imageNamed:@"user"] forState:UIControlStateSelected];
    [_exchangeButton setImage:[UIImage imageNamed:@"money-exchange"] forState:UIControlStateDisabled];
    [_calculatorButton setImage:[UIImage imageNamed:@"calculator"] forState:UIControlStateDisabled];
    [_myLikedButton setImage:[UIImage imageNamed:@"add-a-like"] forState:UIControlStateDisabled];
    [_userCenterButton setImage:[UIImage imageNamed:@"user"] forState:UIControlStateDisabled];
    if (self = [super initWithFrame:frame]) {
        NSArray *views = [[NSBundle mainBundle] loadNibNamed:@"BottomView" owner:self options:nil];
        [self addSubview:[views lastObject]];
    }
    return self;
}

- (IBAction)exchange:(id)sender {
//    [self changeContent:110];
    [_delegate changeContent:110];
    [self changeStatus:sender];
}

- (IBAction)calculator:(id)sender {
    [self changeStatus:sender];
}

- (IBAction)myLiked:(id)sender {
    [self changeStatus:sender];
}

- (IBAction)userCenter:(id)sender {
    [self changeStatus:sender];
    //    NSLog(@"%@",[self.superview.subviews objectAtIndex:2]);
}

//通过代理想主页面内容栏发送更换内容的消息
-(void)changeContent:(int)whichContent {
    [_delegate changeContent:whichContent];
}

//点击按钮，改变相关按钮的属性
-(void)changeStatus:(id)sender {
    for (UIButton *button in self.subviews) {
        if (button == sender) {
            [button setEnabled:NO];
        }else {
            [button setEnabled:YES];
        }
    }
}

@end
