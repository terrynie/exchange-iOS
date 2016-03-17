//
//  TNExchangeCell.m
//  realtimeExchange
//
//  Created by Terry on 3/16/16.
//  Copyright © 2016 Terry. All rights reserved.
//

#import "TNExchangeCell.h"
@interface TNExchangeCell ()
@property (weak, nonatomic) IBOutlet UILabel *bank;
@property (weak, nonatomic) IBOutlet UILabel *updateTime;
@property (weak, nonatomic) IBOutlet UIImageView *isHigher;
@property (weak, nonatomic) IBOutlet UILabel *cashBuyPrice;
@property (weak, nonatomic) IBOutlet UILabel *remittanceBuyPrice;
@property (weak, nonatomic) IBOutlet UILabel *sellPrice;
@property (weak, nonatomic) IBOutlet UILabel *cenPrice;

@end

@implementation TNExchangeCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self  = [[[NSBundle mainBundle] loadNibNamed:@"ExchangeCell" owner:nil options:nil] lastObject];
    }
    return self;
}

//使用Currency创建cell
- (instancetype)initWithCurrency:(TNCurrency *)currency {
    self = [TNExchangeCell init];
    
    
    return self;
}

+ (instancetype)cellWithCurrency:(TNCurrency *)currency {
    
    return [[self alloc] initWithCurrency:currency];
}
@end
