//
//  BottomCellView.h
//  realtimeExchange
//
//  Created by Terry on 3/6/16.
//  Copyright © 2016 Terry. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface BottomCellView : UIView
@property(nonatomic, retain) UIImage *image;
@property(nonatomic, retain) UILabel *label;

+ (instancetype)bottomCellView;
@end
