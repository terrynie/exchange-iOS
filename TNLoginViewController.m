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
        NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2.0 target:self selector:@selector(hidden) userInfo:nil repeats:NO];
        
    }else{
        if([password isEqualToString:@""]){
            //未输入密码时提示
            _alert.text = @"请输入密码";
            [_alert setHidden:NO];
        } else {
            //登录
            NSString *urlStr = [NSString stringWithFormat:@""];
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
