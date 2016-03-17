//
//  TNExchangeCell.h
//  realtimeExchange
//
//  Created by Terry on 3/16/16.
//  Copyright © 2016 Terry. All rights reserved.
//

#import <UIKit/UIKit.h>
@class TNCurrency;

@interface TNExchangeCell : UITableViewCell
- (instancetype)initWithFrame:(CGRect)frame;
- (instancetype)initWithCurrency:(TNCurrency *)currency;
+ (instancetype)cellWithCurrency:(TNCurrency *)currency;
@end
