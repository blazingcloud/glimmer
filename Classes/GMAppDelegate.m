//
//  GMAppDelegate.m
//  Glimmer
//
//  Created by Lee Lundrigan on 9/28/10.
//  Copyright 2010 Blazing Cloud. All rights reserved.
//

#import "GMAppDelegate.h"


@implementation GMAppDelegate

@synthesize window;


#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    [window addSubview:pageViewController.view];
	[window makeKeyAndVisible];
	window.autoresizesSubviews = YES;

    return YES;
}

#pragma mark -
#pragma mark Application's Documents directory

/**
 Returns the path to the application's Documents directory.
 */
- (NSString *)applicationDocumentsDirectory {
    return [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
}


#pragma mark -
#pragma mark Memory management

- (void)dealloc {
	[window release];
    [super dealloc];
}


@end

