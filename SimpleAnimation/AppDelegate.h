//
//  AppDelegate.h
//  SimpleAnimation
//
//  Created by Simon on 30/3/13.
//  Copyright (c) 2013 Appcoda. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

+(AppDelegate *)sharedInstant;

@end
