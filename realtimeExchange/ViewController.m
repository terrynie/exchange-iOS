//
//  ViewController.m
//  realtimeExchange
//
//  Created by Terry on 2/29/16.
//  Copyright © 2016 Terry. All rights reserved.
//

#import "ViewController.h"
#import "BottomView.h"
#import "TNContentView.h"

@interface ViewController ()
@property(nonatomic, retain) TNContentView *content;
@property(nonatomic, retain) BottomView *bottom;
@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    CGFloat width = self.view.frame.size.width;
    CGFloat height = self.view.frame.size.height;
    
    //创建主内容区域
    _content = [TNContentView contentViewWithFrame:CGRectMake(0, 0, width, height*0.9)];
    [self.view addSubview:_content];
    
    //创建底部栏
    _bottom = [[BottomView alloc] initWithFrame:CGRectMake(0, height*0.9, width, height*0.2)];
    [self.view addSubview:_bottom];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
