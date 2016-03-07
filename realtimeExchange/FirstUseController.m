//
//  FirstUseController.m
//  realtimeExchange
//
//  Created by Terry on 2/29/16.
//  Copyright © 2016 Terry. All rights reserved.
//

#import "FirstUseController.h"
#import "ViewController.h"


@implementation FirstUseController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _sv = [[UIScrollView alloc] init];
    _sv.pagingEnabled = YES;
    _sv.frame = CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height);
    [_sv setContentSize:(CGSize){self.view.bounds.size.width*3, self.view.bounds.size.height}];
    _sv.backgroundColor = [UIColor whiteColor];
    
    
    UIView *cellView1 = [[UIView alloc] initWithFrame:_sv.frame];
    [cellView1 setBackgroundColor:[UIColor redColor]];
    
    UIView *cellView2 = [[UIView alloc] initWithFrame:CGRectMake(_sv.frame.size.width, 0, _sv.frame.size.width, _sv.frame.size.height)];
    [cellView2 setBackgroundColor:[UIColor grayColor]];
    
    //使按钮位于屏幕正中央
    UIButton *bt = [[UIButton alloc] initWithFrame:CGRectMake((self.view.bounds.size.width-100)/2, (self.view.bounds.size.height-50)/2, 100, 50)];
    [bt setTitle:@"跳过引导" forState:UIControlStateNormal];
    [bt setBackgroundColor:[UIColor grayColor]];
    [bt setTintColor:[UIColor whiteColor]];
    [bt addTarget:self action:@selector(changeView) forControlEvents:UIControlEventTouchUpInside];
    UIView *cellView3 = [[UIView alloc] initWithFrame:CGRectMake(_sv.frame.size.width*2, 0, _sv.frame.size.width, _sv.frame.size.height)];
    [cellView3 addSubview:bt];
    [cellView3 setBackgroundColor:[UIColor blackColor]];
    
    [_sv addSubview:cellView1];
    [_sv addSubview:cellView2];
    [_sv addSubview:cellView3];
    
    //是否显示水平滚动条和垂直滚动条
    _sv.showsHorizontalScrollIndicator = YES;
    _sv.showsVerticalScrollIndicator = NO;
    //设置偏移量
    _sv.contentOffset = CGPointMake(0, 0);
    [self.view addSubview:_sv];
    _sv.delegate = self;
}

/** 
 跳过引导
 */
- (IBAction)changeView {
    UIWindow *window = self.view.window;
    ViewController *main = [[ViewController alloc] init];
    window.rootViewController = main;
}

@end
