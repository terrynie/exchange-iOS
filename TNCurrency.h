//
//  TNCurrency.h
//  realtimeExchange
//
//  Created by Terry on 3/11/16.
//  Copyright © 2016 Terry. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TNCurrency : NSObject

@property(nonatomic, retain) NSString *bank;
@property(nonatomic, retain) NSString *name;
//lastest data
@property(nonatomic, assign) double cenPrice;
@property(nonatomic, assign) double remittenceBuyPrice;
@property(nonatomic, assign) double sellPrice;
@property(nonatomic, assign) double cashBuyPrice;
@property(nonatomic, retain) NSString *releasedate;
@property(nonatomic, retain) NSString *releasetime;
//before lastest data
@property(nonatomic, assign) double oldCenPrice;
@property(nonatomic, assign) double oldRemittenceBuyPrice;
@property(nonatomic, assign) double oldSellPrice;
@property(nonatomic, assign) double oldCashBuyPrice;
@property(nonatomic, retain) NSString *oldReleasedate;
@property(nonatomic, retain) NSString *oldReleasetime;


- (instancetype)initWithData:(NSData *)data;
+ (instancetype)currencyWithData:(NSData *)data;
@end
