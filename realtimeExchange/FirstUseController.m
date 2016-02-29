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
    
    UILabel *welcom = [[UILabel alloc] initWithFrame:CGRectMake(150, 200, 200, 50)];
    [welcom setText:@"welcome"];
    [self.view addSubview:welcom];
    [self performSelector:@selector(changeView) withObject:self afterDelay:20];
    
    
}

- (void)changeView {
    UIWindow *window = self.view.window;
    ViewController *main = [[ViewController alloc] init];
    window.rootViewController = main;
}

@end
