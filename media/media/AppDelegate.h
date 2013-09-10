//
//  AppDelegate.h
//  media
//
//  Created by MatsuyaMac on 2013/09/09.
//  Copyright (c) 2013年 MKProject. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : NSObject <UIApplicationDelegate>
{
    UIWindow* window_;
    UIViewController* rootController_;
}

@property (strong, nonatomic) UIWindow *window;

@end
