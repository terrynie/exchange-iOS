//
//  ViewController.m
//  realtimeExchange
//
//  Created by Terry on 2/29/16.
//  Copyright © 2016 Terry. All rights reserved.
//

#import "ViewController.h"
#import "TNContentView.h"
#import "TNLoginViewController.h"
#import "TNBottomView.h"

@interface ViewController ()
@property(nonatomic, retain) TNContentView *content;
@property(nonatomic, retain) TNBottomView *bottomView;
@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    CGFloat width = self.view.frame.size.width;
    CGFloat height = self.view.frame.size.height;
    
    
    //创建主内容区域
    _content = [TNContentView contentViewWithFrame:CGRectMake(0, 0, width, height*0.9)];
    _content.backgroundColor = [UIColor grayColor];
    [self.view addSubview:_content];
    
    
    //创建底部选择栏
    _bottomView = [[TNBottomView alloc] init];
    _bottomView.delegate = self;
    [self.view addSubview:_bottomView];


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

//点击底部按钮是更换上部视图
-(void)changeContent:(int)whichContent {
    NSLog(@"%d",whichContent);
}

@end
