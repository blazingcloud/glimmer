//
//  GlimmerAppDelegate.h
//  Glimmer
//
//  Created by Lee Lundrigan on 9/28/10.
//  Copyright 2010 Blazing Cloud. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface GMAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	IBOutlet UIViewController *pageViewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

- (NSString *)applicationDocumentsDirectory;

@end

