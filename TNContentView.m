//
//  TNContentView.m
//  realtimeExchange
//
//  Created by Terry on 3/6/16.
//  Copyright © 2016 Terry. All rights reserved.
//

#import "TNContentView.h"
#import "TNExchangeCell.h"
#import "TNCurrency.h"

@implementation TNContentView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.frame = frame;
        
    }
    return self;
}

+ (instancetype)contentViewWithFrame:(CGRect)frame {
    return [[self alloc] initWithFrame:frame];
}

//更换内容栏内容
-(void)changeContentView {
    NSLog(@"%s",__func__);
}
@end
