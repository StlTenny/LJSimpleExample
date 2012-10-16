LJSimpleExample
===============

<b>LoopJoy Documentation and Sample Implementation</b>
<br/>

<b> Note: When running the attached demo project in Xcode you will need to replace the Api Key, and Item numbers with those Provided
	<br/> Otherwise you'll see the dreaded No connectivity error</b>
	
<b>-- Installing the Library.    
Drag and drop LoopJoyStore.h and libLJStore.a files into your projects library.
<br/>
![See readme-1](http://imgur.com/eHGD3.png)

Make sure the settings for copy items into destination group folder and add to build targets are checked.
<br/>
![See readme-2](http://imgur.com/K8Ki4.png)

Under your targets build phases, add the following frameworks and libraries.

	-Foundation.framework
	-Security.framework 
	-UIKit.framework 
	-CFNetwork.framework 
	-CoreGraphics.Framework
	-libxml2.dylib 
	-libz.1.2.5.dylib 
	-libsqlite3.0.dylib
<br/>
![See readme-3](http://imgur.com/u9nYx.png)

Finally, under build settings under your target page, add the following flags under Other linker flags
–all_load –ObjC

<br/>
![See readme-4](http://imgur.com/jJpOe.png)

Compile and you’re good to go!
<br/><br/>


--  Implementing the Library
<br/>
To implement the library there are only a few simple calls. In your application load method initialize the library with
	[LoopJoyStore initWithAPIKey:@"MY_API_KEY_HERE" forEnv:LJ_ENV_BETA]; //Note – Paypal transactions are still live in both Beta and Live Environments.

To get a LoopJoy Button:
	UIButton *buyNow = [[LoopJoyStore sharedInstance] getLJButtonForItem:18 withButtonType:LJ_BUTTON_IPAD_RED];

To Reposition a LoopJoy Button: Simply edit the frame attribute of the UIButton
	
	CGRect frame = buyNow.frame; 
	frame.origin.x = 600; 
	frame.origin.y = 860; 
	buyNow.frame = frame;

To Show a LoopJoy Button:
	[containerView addSubview:buyNow];
To Get a LoopJoy Alert;

	UIAlertView *ljAlert = [[LoopJoyStore sharedInstance] getLJAlertForItem:18 withTitle:@"You just unlocked a new hat"
andMessage:@"You're such a good sport" isCancelable:FALSE];
	//Note is cancelable dictates whether or not there is a “No Thanks” button that takes the user away from the LoopJoy Store

To Get a LoopJoy Alert;
	[ljAlert show]; Voila!

Button types include

	LJ_BUTTON_IPAD_BLACK, 
	LJ_BUTTON_IPHONE_BLACK, 
	LJ_BUTTON_IPAD_BLUE, 
	LJ_BUTTON_IPHONE_BLUE, 
	LJ_BUTTON_IPAD_GREEN, 
	LJ_BUTTON_IPHONE_GREEN, 
	LJ_BUTTON_IPAD_RED, 
	LJ_BUTTON_IPHONE_RED, 
	LJ_BUTTON_IPAD_YELLOW, 
	LJ_BUTTON_IPHONE_YELLOW, 
	LJ_BUTTON_IPAD_YELLOW_NO_LINE

As defined in LoopJoyStore.h


