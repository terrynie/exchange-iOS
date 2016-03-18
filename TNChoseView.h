//
//  TNChoseView.h
//  realtimeExchange
//
//  Created by Terry on 3/17/16.
//  Copyright © 2016 Terry. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TNChoseView : UIView
-(instancetype)initWithFrame:(CGRect)frame;
-(instancetype)initWithData:(NSData *)data;
+(instancetype)choseWithData:(NSData *)data;
@end
