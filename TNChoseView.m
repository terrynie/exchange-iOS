//
//  TNChoseView.m
//  realtimeExchange
//
//  Created by Terry on 3/17/16.
//  Copyright © 2016 Terry. All rights reserved.
//

#import "TNChoseView.h"
#import "TNCurrency.h"

@interface TNChoseView ()
@property (weak, nonatomic) IBOutlet UIButton *byBank;
@property (weak, nonatomic) IBOutlet UIButton *byCurrency;

@end


@implementation TNChoseView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self = [[[NSBundle mainBundle] loadNibNamed:@"ChoseView" owner:nil options:nil] lastObject];
    }
    return self;
}


- (IBAction)queryByBank:(id)sender {
    dispatch_queue_t loadByBank ;
    dispatch_async(loadByBank, ^{
        NSString *urlStr = [NSString stringWithFormat:@"http://119.29.156.162:8000/exchange?bank=中国银行&currency=日元"];
        NSString *encoding = [urlStr stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
        NSURL *url = [NSURL URLWithString:encoding];
        NSData *data = [NSData dataWithContentsOfURL:url options:NSDataReadingUncached error:nil];
        TNCurrency *currency = [TNCurrency currencyWithData:data];
    });
}


- (IBAction)queryByCurrency:(id)sender {
}

@end
