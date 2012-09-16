//
//  LJMainViewController.h
//  LJSimpleExample
//
//  Created by Tennyson Hinds on 8/22/12.
//  Copyright (c) 2012 LoopJoy Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LoopJoyStore.h"

@interface LJMainViewController : UIViewController <LoopJoyStoreDelegate>{
    UIView *containerView;
}
+(LJMainViewController *)sharedController;
@end
