//
//  TNLoginViewController.m
//  realtimeExchange
//
//  Created by Terry on 3/6/16.
//  Copyright © 2016 Terry. All rights reserved.
//

#import "TNLoginViewController.h"

@interface TNLoginViewController ()
@property (weak, nonatomic) IBOutlet UITextField *account;
@property (weak, nonatomic) IBOutlet UITextField *password;
@property (weak, nonatomic) IBOutlet UILabel *alert;

@end

@implementation TNLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)login {
    //获取到密码
    NSString *account = _account.text;
    NSString *password = _password.text;
    if ([account isEqualToString:@""]) {
        //提示输入账号
        [_alert setHidden:NO];
        [_alert performSelector:@selector(hidden) withObject:self afterDelay:2.0];
        
    }else{
        if([password isEqualToString:@""]){
            //未输入密码时提示
            _alert.text = @"请输入密码";
            [_alert setHidden:NO];
        } else {
            //登录
            NSString *urlStr = [NSString stringWithFormat:@"http://119.29.156.162:8000/login?username=%@&password=%@",account,password];
            NSURL *url = [NSURL URLWithString:urlStr];
            NSString *result = [NSString stringWithContentsOfURL:url encoding:NSUTF8StringEncoding error:nil];
            NSLog(@"%@",result);
        }
    }
}

- (IBAction)goToSignUp {
}

- (IBAction)changePassword {
}

- (void)hidden {
    [_alert setHidden:YES];
}


@end
