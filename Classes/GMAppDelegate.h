//
//  GlimmerAppDelegate.h
//  Glimmer
//
//  Created by Lee Lundrigan on 9/28/10.
//  Copyright 2010 Blazing Cloud. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GMPageViewController.h"

@interface GMAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	IBOutlet GMPageViewController *pageViewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

- (NSString *)applicationDocumentsDirectory;

@end

