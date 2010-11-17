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

- (void)applicationWillResignActive:(UIApplication *)application {
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
    
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive.
     */
    
    [pageViewController setCurrentPage:0];
    [pageViewController buildUp];
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    [pageViewController tearDown];
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

