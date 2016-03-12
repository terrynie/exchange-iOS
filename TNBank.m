//
//  TNBank.m
//  realtimeExchange
//
//  Created by Terry on 3/11/16.
//  Copyright © 2016 Terry. All rights reserved.
//

#import "TNBank.h"
#import "TNCurrency.h"
#import <objc/runtime.h>

@interface TNBank ()
@property(nonatomic, retain) TNCurrency *aud; //澳大利亚元
@property(nonatomic, retain) TNCurrency *mop; //澳门元
@property(nonatomic, retain) TNCurrency *brl; //巴西雷亚尔
@property(nonatomic, retain) TNCurrency *dkk; //丹麦克朗
@property(nonatomic, retain) TNCurrency *php; //菲律宾比索
@property(nonatomic, retain) TNCurrency *hsk; //哈萨克斯坦坚戈 无代码
@property(nonatomic, retain) TNCurrency *krw; //韩元
@property(nonatomic, retain) TNCurrency *hkd; //港币
@property(nonatomic, retain) TNCurrency *cau; //加拿大元
@property(nonatomic, retain) TNCurrency *myr; //吉林特
@property(nonatomic, retain) TNCurrency *rub; //卢布
@property(nonatomic, retain) TNCurrency *usd; //美元
@property(nonatomic, retain) TNCurrency *zar; //南非兰特
@property(nonatomic, retain) TNCurrency *nok; //挪威克朗
@property(nonatomic, retain) TNCurrency *eur; //欧元
@property(nonatomic, retain) TNCurrency *jpy; //日元
@property(nonatomic, retain) TNCurrency *sek; //瑞典克朗
@property(nonatomic, retain) TNCurrency *chf; //瑞士法郎
@property(nonatomic, retain) TNCurrency *thb; //泰国铢
@property(nonatomic, retain) TNCurrency *sgd; //新加坡元
@property(nonatomic, retain) TNCurrency *nzd; //新西兰元
@property(nonatomic, retain) TNCurrency *idr; //印尼盾
@property(nonatomic, retain) TNCurrency *gbp; //英镑
@property(nonatomic, retain) TNCurrency *vnd; //越南盾

@end

@implementation TNBank

@end
