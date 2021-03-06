//
//  TNBottomView.h
//  realtimeExchange
//
//  Created by Terry on 3/11/16.
//  Copyright © 2016 Terry. All rights reserved.
//

#import <UIKit/UIKit.h>

//协议，通过本协议实现更换主界面视图
@protocol BottomDelegate<NSObject>
@required
- (void) changeContent:(int) whichContent;
@end

@interface TNBottomView : UIView
@property(nonatomic, weak) id<BottomDelegate> delegate;
@end
