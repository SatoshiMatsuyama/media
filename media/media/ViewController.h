//
//  ViewController.h
//  media
//
//  Created by MatsuyaMac on 2013/09/09.
//  Copyright (c) 2013年 MKProject. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>
#import <messageUI/MFMailComposeViewController.h>


@interface ViewController : UIViewController <MFMailComposeViewControllerDelegate>
{
//    AVAudioPlayer* _player[6];
    
@private
    UILabel* label_;
    
//    BOOL bannerIsVisible;
//    ADBannerView *adView;
}


-(IBAction) doSendEmail:(id) sender;
-(void) showComposerSheet;
-(void) setAlert:(NSString *) aTitle :(NSString *) aDescription;


@end
