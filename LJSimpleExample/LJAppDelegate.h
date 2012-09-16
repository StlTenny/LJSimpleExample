//
//  LJAppDelegate.h
//  LJSimpleExample
//
//  Created by Tennyson Hinds on 8/22/12.
//  Copyright (c) 2012 LoopJoy Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LoopJoyStore.h"

@interface LJAppDelegate : UIResponder <UIApplicationDelegate,LoopJoyStoreDelegate>

@property (strong, nonatomic) UIWindow *window;

@end
