//
//  LJMainViewController.m
//  LJSimpleExample
//
//  Created by Tennyson Hinds on 8/22/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "LJMainViewController.h"
#import "LoopJoyStore.h"

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
    
    UIButton *buyNow;
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad){
        buyNow = [[LoopJoyStore sharedInstance] getLJButtonForItem:18 withButtonType:LJ_BUTTON_IPAD_RED];
    }
    else{
        buyNow = [[LoopJoyStore sharedInstance] getLJButtonForItem:18 withButtonType:LJ_BUTTON_IPHONE_YELLOW];
    }
    //Can be used to move the placement of the Loopjoy Button
    //CGRect frame = buyNow.frame;
    //frame.origin.x = 50;
    //frame.origin.y = 50;
    //buyNow.frame = frame;
    
    [containerView addSubview:buyNow];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view addSubview:containerView];
    UIAlertView *ljAlert = [[LoopJoyStore sharedInstance] getLJAlertForItem:18 
                                                                  withTitle:@"You just unlocked a new hat" 
                                                                 andMessage:@"You're such a good sport" 
                                                               isCancelable:FALSE];
    [ljAlert show];
}

- (void)tryingSelector{
    [[LoopJoyStore sharedInstance] showModalForItem:18];
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
