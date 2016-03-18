//
//  ViewController.h
//  realtimeExchange
//
//  Created by Terry on 2/29/16.
//  Copyright © 2016 Terry. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TNBottomView.h"

@interface ViewController : UIViewController <BottomDelegate>
-(void)changeContent:(int)whichContent;
@end

