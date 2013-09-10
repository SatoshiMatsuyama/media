//
//  ViewController.m
//  media
//
//  Created by MatsuyaMac on 2013/09/09.
//  Copyright (c) 2013年 MKProject. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (id)init {
    if ( (self = [super init]) ) {
        // tabBar用設定
        self.title = @"Home";
        UIImage* icon = [UIImage imageNamed:@"home.png"];
        self.tabBarItem =
        [[[UITabBarItem alloc] initWithTitle:@"Home" image:icon tag:0] autorelease];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}

@end
