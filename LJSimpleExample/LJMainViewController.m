//
//  LJMainViewController.m
//  LJSimpleExample
//
//  Created by Tennyson Hinds on 8/22/12.
//  Copyright (c) 2012 LoopJoy Inc. All rights reserved.
//

#import "LJMainViewController.h"

@interface LJMainViewController ()

@end

@implementation LJMainViewController

static LJMainViewController *_sharedController = nil;

+ (LJMainViewController *)sharedController
{
    if (!_sharedController)
        _sharedController = [[LJMainViewController alloc] init];
    
    return _sharedController;
}

- (void)loadView{
    [super loadView];
    

    containerView = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    containerView.backgroundColor= [UIColor grayColor];

    
    //Make sure to change item number to one provided
    
    UIButton *buyNow;
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad){
        buyNow = [[LoopJoyStore sharedInstance] getLJButtonForItem:39 withButtonType:LJ_BUTTON_IPAD_RED];
    }
    else{
        buyNow = [[LoopJoyStore sharedInstance] getLJButtonForItem:39 withButtonType:LJ_BUTTON_IPHONE_BLUE];
    }

    //Can be used to move the placement of the Loopjoy Button
    //CGRect frame = buyNow.frame;
    //frame.origin.x = 200;
    //frame.origin.y = 360;
    //buyNow.frame = frame;
    
    
    [containerView addSubview:buyNow];

}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view addSubview:containerView];
    
    //Make sure to change item number to one provided
    UIAlertView *ljAlert = [[LoopJoyStore sharedInstance] getLJAlertForItem:39
                                                                  withTitle:@"You just unlocked a new hat" 
                                                                 andMessage:@"You're such a good sport" 
                                                               isCancelable:FALSE];
    [ljAlert show];
    
    
}
-(void)loadComplete{
    //Take any action once the LoopJoy library is loaded.
    //UIImageView *imageView = [[UIImageView alloc] initWithImage:[[LoopJoyStore sharedInstance] getImageForItem:99]];
    //imageView.frame = CGRectMake(50,50,100,100);
}



- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
