//
//  TNCurrency.m
//  realtimeExchange
//
//  Created by Terry on 3/11/16.
//  Copyright © 2016 Terry. All rights reserved.
//

#import "TNCurrency.h"

@interface TNCurrency ()
//lastest data
@property(nonatomic, retain) NSString *name;
@property(nonatomic, retain) NSString *code;
@property(nonatomic, assign) double cenPrice;
@property(nonatomic, assign) double remittenceBuyPrice;
@property(nonatomic, assign) double sellPrice;
@property(nonatomic, assign) double cashBuyPrice;
@property(nonatomic, assign) double sellPrice2;
@property(nonatomic, retain) NSString *releasedate;
//before lastest data
@property(nonatomic, retain) NSString *oldName;
@property(nonatomic, retain) NSString *oldCode;
@property(nonatomic, assign) double oldCenPrice;
@property(nonatomic, assign) double oldRemittenceBuyPrice;
@property(nonatomic, assign) double oldSellPrice;
@property(nonatomic, assign) double oldCashBuyPrice;
@property(nonatomic, assign) double oldSellPrice2;
@property(nonatomic, retain) NSString *oldReleasedate;

@end

@implementation TNCurrency

- (instancetype)initWithData:(NSData *)data {
    if (self = [super init]) {
        
    }
    return self;
}

+ (instancetype)currencyWithData:(NSData *)data {
    return [[self alloc] initWithData:data];
}

@end
