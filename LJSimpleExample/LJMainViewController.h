//
//  LJMainViewController.h
//  LJSimpleExample
//
//  Created by Tennyson Hinds on 8/22/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LJMainViewController : UIViewController{
    UIView *containerView;
}
+(LJMainViewController *)sharedController;
@end
