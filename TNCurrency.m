//
//  TNCurrency.m
//  realtimeExchange
//
//  Created by Terry on 3/11/16.
//  Copyright © 2016 Terry. All rights reserved.
//

#import "TNCurrency.h"

@interface TNCurrency ()

@end

@implementation TNCurrency

- (instancetype)initWithData:(NSData *)data {
    if (self = [super init]) {
        NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
        _bank = [[json objectForKey:@"now"] objectForKey:@"bank"];
        _name = [[json objectForKey:@"now"] objectForKey:@"currency"];
        _cenPrice = [[[json objectForKey:@"now"] objectForKey:@"cenPrice"] doubleValue];
        _remittenceBuyPrice = [[[json objectForKey:@"now"] objectForKey:@"remittanceBuyPrice"] doubleValue];
        _sellPrice = [[[json objectForKey:@"now"] objectForKey:@"sellPrice"] doubleValue];
        _cashBuyPrice = [[[json objectForKey:@"now"] objectForKey:@"cashBuyPrice"] doubleValue];
        _releasedate = [[json objectForKey:@"now"] objectForKey:@"lastReleaseDate"];
        _releasetime = [[json objectForKey:@"now"] objectForKey:@"lastReleaseTime"];
        
        _oldCenPrice = [[[json objectForKey:@"last"] objectForKey:@"cenPrice"] doubleValue];
        _oldRemittenceBuyPrice = [[[json objectForKey:@"last"] objectForKey:@"remittanceBuyPrice"] doubleValue];
        _oldSellPrice = [[[json objectForKey:@"last"] objectForKey:@"sellPrice"] doubleValue];
        _oldCashBuyPrice = [[[json objectForKey:@"last"] objectForKey:@"cashBuyPrice"] doubleValue];
        _oldReleasedate = [[json objectForKey:@"last"] objectForKey:@"lastReleaseDate"];
        _oldReleasetime = [[json objectForKey:@"last"] objectForKey:@"lastReleaseTime"];
        
    }
    return self;
}

+ (instancetype)currencyWithData:(NSData *)data {
    return [[self alloc] initWithData:data];
}

-(NSString *)description{
    return [NSString stringWithFormat:@"bank:%@\n name=%@\n cenPrice:%lf\n remittenceBuyPrice:%lf\n sellPrice:%lf\n cashBuyPrice:%lf\n releasedate:%@ %@\n oldcenPrice:%lf\n oldremittenceBuyPrice:%lf\n oldsellPrice:%lf\n oldcashBuyPrice:%lf\n oldreleasedate:%@ %@",_bank,_name,_cenPrice,_remittenceBuyPrice,_sellPrice,_cashBuyPrice,_releasedate,_releasetime,_oldCenPrice,_oldRemittenceBuyPrice,_oldSellPrice,_oldCashBuyPrice,_oldReleasedate,_oldReleasetime];
}

@end
