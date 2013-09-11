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
    self.view.backgroundColor = [UIColor whiteColor];
    
    // 1出原
    UIButton* button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    button1.frame = CGRectMake( 20, 20, 80, 80 );
    button1.titleLabel.lineBreakMode = NSLineBreakByCharWrapping;
    [button1 setBackgroundColor:[UIColor blackColor]];
    [button1 setTitleColor:[UIColor yellowColor] forState:UIControlStateNormal];
    [button1 addTarget:self action:@selector(buttonDidPush1) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button1];
    // ボタン押下時のタイトルの色を変更する
    [button1 setTitleColor:[UIColor blackColor] forState:UIControlStateHighlighted];
    [self.view addSubview:button1];
    
    //1出原ラベル
    UILabel *label1 = [[UILabel alloc] init];
    label1.frame = CGRectMake(20, 100, 80, 20);
    label1.backgroundColor = [UIColor whiteColor];
    label1.textColor = [UIColor grayColor];
    label1.font = [UIFont fontWithName:@"Helvetica-Bold" size:14];
    label1.textAlignment = NSTextAlignmentCenter;
    label1.text = @"出原 立子";
    [self.view addSubview:label1];
    
    
    // 2江村
    UIButton* button2 = [UIButton buttonWithType:UIButtonTypeCustom];
    button2.frame = CGRectMake( 120, 20, 80, 80 );
    button2.titleLabel.lineBreakMode = NSLineBreakByCharWrapping;
    [button2 setBackgroundColor:[UIColor blackColor]];
    [button2 setTitleColor:[UIColor yellowColor] forState:UIControlStateNormal];
    [button2 addTarget:self action:@selector(buttonDidPush2) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button2];
    // ボタン押下時のタイトルの色を変更する
    [button2 setTitleColor:[UIColor blackColor] forState:UIControlStateHighlighted];
    [self.view addSubview:button2];
    
    //2江村ラベル
    UILabel *label2 = [[UILabel alloc] init];
    label2.frame = CGRectMake(120, 100, 80, 20);
    label2.backgroundColor = [UIColor whiteColor];
    label2.textColor = [UIColor grayColor];
    label2.font = [UIFont fontWithName:@"Helvetica-Bold" size:14];
    label2.textAlignment = NSTextAlignmentCenter;
    label2.text = @"江村 伯夫";
    [self.view addSubview:label2];
	
    // 3郭
    UIButton* button3 = [UIButton buttonWithType:UIButtonTypeCustom];
    button3.frame = CGRectMake( 220, 20, 80, 80 );
    button3.titleLabel.lineBreakMode = NSLineBreakByCharWrapping;
    [button3 setBackgroundColor:[UIColor blackColor]];
    [button3 setTitleColor:[UIColor yellowColor] forState:UIControlStateNormal];
    [button3 addTarget:self action:@selector(buttonDidPush3) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button3];
    // ボタン押下時のタイトルの色を変更する
    [button3 setTitleColor:[UIColor blackColor] forState:UIControlStateHighlighted];
    [self.view addSubview:button3];
    
    //3郭ラベル
    UILabel *label3 = [[UILabel alloc] init];
    label3.frame = CGRectMake(220, 100, 80, 20);
    label3.backgroundColor = [UIColor whiteColor];
    label3.textColor = [UIColor grayColor];
    label3.font = [UIFont fontWithName:@"Helvetica-Bold" size:14];
    label3.textAlignment = NSTextAlignmentCenter;
    label3.text = @"郭　 清蓮";
    [self.view addSubview:label3];
    
    // 4鎌田
    UIButton* button4 = [UIButton buttonWithType:UIButtonTypeCustom];
    button4.frame = CGRectMake( 20, 140, 80, 80 );
    button4.titleLabel.lineBreakMode = NSLineBreakByCharWrapping;
    [button4 setBackgroundColor:[UIColor blackColor]];
    [button4 setTitleColor:[UIColor yellowColor] forState:UIControlStateNormal];
    [button4 addTarget:self action:@selector(buttonDidPush4) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button4];
    // ボタン押下時のタイトルの色を変更する
    [button4 setTitleColor:[UIColor blackColor] forState:UIControlStateHighlighted];
    [self.view addSubview:button4];
    
    //4鎌田ラベル
    UILabel *label4 = [[UILabel alloc] init];
    label4.frame = CGRectMake(20, 220, 80, 20);
    label4.backgroundColor = [UIColor whiteColor];
    label4.textColor = [UIColor grayColor];
    label4.font = [UIFont fontWithName:@"Helvetica-Bold" size:14];
    label4.textAlignment = NSTextAlignmentCenter;
    label4.text = @"鎌田 洋";
    [self.view addSubview:label4];
    
    // 5川田
    UIButton* button5 = [UIButton buttonWithType:UIButtonTypeCustom];
    button5.frame = CGRectMake( 120, 140, 80, 80 );
    button5.titleLabel.lineBreakMode = NSLineBreakByCharWrapping;
    [button5 setBackgroundColor:[UIColor blackColor]];
    [button5 setTitleColor:[UIColor yellowColor] forState:UIControlStateNormal];
    [button5 addTarget:self action:@selector(buttonDidPush5) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button5];
    // ボタン押下時のタイトルの色を変更する
    [button5 setTitleColor:[UIColor blackColor] forState:UIControlStateHighlighted];
    [self.view addSubview:button5];
    
    //5川田 剛之ラベル
    UILabel *label5 = [[UILabel alloc] init];
    label5.frame = CGRectMake(120, 220, 80, 20);
    label5.backgroundColor = [UIColor whiteColor];
    label5.textColor = [UIColor grayColor];
    label5.font = [UIFont fontWithName:@"Helvetica-Bold" size:14];
    label5.textAlignment = NSTextAlignmentCenter;
    label5.text = @"川田 剛之";
    [self.view addSubview:label5];
	
    // 6千石
    UIButton* button6 = [UIButton buttonWithType:UIButtonTypeCustom];
    button6.frame = CGRectMake( 220, 140, 80, 80 );
    button6.titleLabel.lineBreakMode = NSLineBreakByCharWrapping;
    [button6 setBackgroundColor:[UIColor blackColor]];
    [button6 setTitleColor:[UIColor yellowColor] forState:UIControlStateNormal];
    [button6 addTarget:self action:@selector(buttonDidPush6) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button6];
    // ボタン押下時のタイトルの色を変更する
    [button6 setTitleColor:[UIColor blackColor] forState:UIControlStateHighlighted];
    [self.view addSubview:button6];
    
    //6千石 靖ラベル
    UILabel *label6 = [[UILabel alloc] init];
    label6.frame = CGRectMake(220, 220, 80, 20);
    label6.backgroundColor = [UIColor whiteColor];
    label6.textColor = [UIColor grayColor];
    label6.font = [UIFont fontWithName:@"Helvetica-Bold" size:14];
    label6.textAlignment = NSTextAlignmentCenter;
    label6.text = @"千石 靖";
    [self.view addSubview:label6];
    
    // 7永瀬
    UIButton* button7 = [UIButton buttonWithType:UIButtonTypeCustom];
    button7.frame = CGRectMake( 20, 260, 80, 80 );
    button7.titleLabel.lineBreakMode = NSLineBreakByCharWrapping;
    [button7 setBackgroundColor:[UIColor blackColor]];
    [button7 setTitleColor:[UIColor yellowColor] forState:UIControlStateNormal];
    [button7 addTarget:self action:@selector(buttonDidPush7) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button7];
    // ボタン押下時のタイトルの色を変更する
    [button7 setTitleColor:[UIColor blackColor] forState:UIControlStateHighlighted];
    [self.view addSubview:button7];
    
    //7永瀬 宏ラベル
    UILabel *label7 = [[UILabel alloc] init];
    label7.frame = CGRectMake(20, 340, 80, 20);
    label7.backgroundColor = [UIColor whiteColor];
    label7.textColor = [UIColor grayColor];
    label7.font = [UIFont fontWithName:@"Helvetica-Bold" size:14];
    label7.textAlignment = NSTextAlignmentCenter;
    label7.text = @"永瀬 宏";
    [self.view addSubview:label7];
    
    // 8中村
    UIButton* button8 = [UIButton buttonWithType:UIButtonTypeCustom];
    button8.frame = CGRectMake( 120, 260, 80, 80 );
    button8.titleLabel.lineBreakMode = NSLineBreakByCharWrapping;
    [button8 setBackgroundColor:[UIColor blackColor]];
    [button8 setTitleColor:[UIColor yellowColor] forState:UIControlStateNormal];
    [button8 addTarget:self action:@selector(buttonDidPush8) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button8];
    // ボタン押下時のタイトルの色を変更する
    [button8 setTitleColor:[UIColor blackColor] forState:UIControlStateHighlighted];
    [self.view addSubview:button8];
    
    //8中村 純生ラベル
    UILabel *label8 = [[UILabel alloc] init];
    label8.frame = CGRectMake(120, 340, 80, 20);
    label8.backgroundColor = [UIColor whiteColor];
    label8.textColor = [UIColor grayColor];
    label8.font = [UIFont fontWithName:@"Helvetica-Bold" size:14];
    label8.textAlignment = NSTextAlignmentCenter;
    label8.text = @"中村 純生";
    [self.view addSubview:label8];
	
    // 9山岸
    UIButton* button9 = [UIButton buttonWithType:UIButtonTypeCustom];
    button9.frame = CGRectMake( 220, 260, 80, 80 );
    button9.titleLabel.lineBreakMode = NSLineBreakByCharWrapping;
    [button9 setBackgroundColor:[UIColor blackColor]];
    [button9 setTitleColor:[UIColor yellowColor] forState:UIControlStateNormal];
    [button9 addTarget:self action:@selector(buttonDidPush9) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button9];
    // ボタン押下時のタイトルの色を変更する
    [button9 setTitleColor:[UIColor blackColor] forState:UIControlStateHighlighted];
    [self.view addSubview:button9];
    
    //9山岸 芳夫ラベル
    UILabel *label9 = [[UILabel alloc] init];
    label9.frame = CGRectMake(220, 340, 80, 20);
    label9.backgroundColor = [UIColor whiteColor];
    label9.textColor = [UIColor grayColor];
    label9.font = [UIFont fontWithName:@"Helvetica-Bold" size:14];
    label9.textAlignment = NSTextAlignmentCenter;
    label9.text = @"山岸 芳夫";
    [self.view addSubview:label9];
    
    // 10山田
    UIButton* button10 = [UIButton buttonWithType:UIButtonTypeCustom];
    button10.frame = CGRectMake( 20, 380, 80, 80 );
    button10.titleLabel.lineBreakMode = NSLineBreakByCharWrapping;
    [button10 setBackgroundColor:[UIColor blackColor]];
    [button10 setTitleColor:[UIColor yellowColor] forState:UIControlStateNormal];
    [button10 addTarget:self action:@selector(buttonDidPush10) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button10];
    // ボタン押下時のタイトルの色を変更する
    [button10 setTitleColor:[UIColor blackColor] forState:UIControlStateHighlighted];
    [self.view addSubview:button10];
    
    //10山田 真司ラベル
    UILabel *label10 = [[UILabel alloc] init];
    label10.frame = CGRectMake(20, 460, 80, 20);
    label10.backgroundColor = [UIColor whiteColor];
    label10.textColor = [UIColor grayColor];
    label10.font = [UIFont fontWithName:@"Helvetica-Bold" size:14];
    label10.textAlignment = NSTextAlignmentCenter;
    label10.text = @"山田 真司";
    [self.view addSubview:label10];
}

//出原 立子
- (void)buttonDidPush1 {
    NSLog(@"hello");
    //    [_player[0] play];
    
    MFMailComposeViewController *picker = [[MFMailComposeViewController alloc] init];
	picker.mailComposeDelegate = self;

    //メールアドレス
//    NSArray *izuhara = [NSArray arrayWithObject:@"izuhara@neptune.kanazawa-it.ac.jp"];
    NSArray *izuhara = [NSArray arrayWithObject:@"darenimoiimasennyo@gmail.com"];
    [picker setToRecipients:izuhara];
		
	//メールの本文を設定
	NSString *emailBody = @"出原 立子 先生\n\n\n金沢工業大学 メディア情報学科\n";

    [picker setMessageBody:emailBody isHTML:NO];
	[self presentViewController: picker animated:YES completion: nil];;
    [picker release];
    
//    //件名
//    [picker setSubject:@""];
//	
//	//添付画像を付ける
//	UIImage *temp	= [UIImage imageNamed:@"temp.png"];
//    NSData *myData	= [[[NSData alloc] initWithData:UIImagePNGRepresentation(temp)] autorelease];
//	[picker addAttachmentData:myData mimeType:@"image/png" fileName:@"temp"];
}

//江村 伯夫
- (void)buttonDidPush2 {
    NSLog(@"hello2");
//    [_player[0] play];
    MFMailComposeViewController *picker = [[MFMailComposeViewController alloc] init];
	picker.mailComposeDelegate = self;
    
    //メールアドレス確認
    NSArray *emura = [NSArray arrayWithObject:@"nemura@neptune.kanazawa-it.ac.jp"];
    [picker setToRecipients:emura];
    
	//メールの本文を設定
	NSString *emailBody = @"江村 伯夫 先生\n\n\n金沢工業大学 メディア情報学科\n";
    
    [picker setMessageBody:emailBody isHTML:NO];
	[self presentViewController: picker animated:YES completion: nil];;
    [picker release];
}

//郭　 清蓮
- (void)buttonDidPush3 {
    NSLog(@"hello3");
//    [_player[0] play];
    MFMailComposeViewController *picker = [[MFMailComposeViewController alloc] init];
	picker.mailComposeDelegate = self;
    
    //メールアドレス確認
    NSArray *kaku = [NSArray arrayWithObject:@"kaku@infor.kanazawa-it.ac.jp"];
    [picker setToRecipients:kaku];
    
	//メールの本文を設定
	NSString *emailBody = @"郭 清蓮 先生\n\n\n金沢工業大学 メディア情報学科\n";
    
    [picker setMessageBody:emailBody isHTML:NO];
	[self presentViewController: picker animated:YES completion: nil];;
    [picker release];
}

//鎌田 洋
- (void)buttonDidPush4 {
    NSLog(@"hello4");
//    [_player[0] play];
    
    MFMailComposeViewController *picker = [[MFMailComposeViewController alloc] init];
	picker.mailComposeDelegate = self;
    
    //メールアドレス確認
    NSArray *kamata = [NSArray arrayWithObject:@"kamada@neptune.kanazawa-it.ac.jp"];
    [picker setToRecipients:kamata];
    
	//メールの本文を設定
	NSString *emailBody = @"鎌田 洋 先生\n\n\n金沢工業大学 メディア情報学科\n";
    
    [picker setMessageBody:emailBody isHTML:NO];
	[self presentViewController: picker animated:YES completion: nil];;
    [picker release];
}

//川田 剛之
- (void)buttonDidPush5 {
    NSLog(@"hello5");
//    [_player[0] play];
    
    MFMailComposeViewController *picker = [[MFMailComposeViewController alloc] init];
	picker.mailComposeDelegate = self;
    
    //メールアドレス確認
    NSArray *kawata = [NSArray arrayWithObject:@"yo-kawat@neptune.kanazawa-it.ac.jp"];
    [picker setToRecipients:kawata];
    
	//メールの本文を設定
	NSString *emailBody = @"川田 剛之 先生\n\n\n金沢工業大学 メディア情報学科\n";
    
    [picker setMessageBody:emailBody isHTML:NO];
	[self presentViewController: picker animated:YES completion: nil];;
    [picker release];
}

//千石 靖
- (void)buttonDidPush6 {
    NSLog(@"hello6");
//    [_player[0] play];
    
    MFMailComposeViewController *picker = [[MFMailComposeViewController alloc] init];
	picker.mailComposeDelegate = self;
    
    //メールアドレス確認
    NSArray *sengoku = [NSArray arrayWithObject:@"sengoku@neptune.kanazawa-it.ac.jp"];
    [picker setToRecipients:sengoku];
    
	//メールの本文を設定 
	NSString *emailBody = @"千石 靖 先生\n\n\n金沢工業大学 メディア情報学科\n";
    
    [picker setMessageBody:emailBody isHTML:NO];
	[self presentViewController: picker animated:YES completion: nil];;
    [picker release];
}

//永瀬 宏
- (void)buttonDidPush7 {
    NSLog(@"hello7");
    //    [_player[0] play];
    
    MFMailComposeViewController *picker = [[MFMailComposeViewController alloc] init];
	picker.mailComposeDelegate = self;
    
    //メールアドレス確認
    NSArray *nagase = [NSArray arrayWithObject:@"hnagase@neptune.kanazawa-it.ac.jp"];
    [picker setToRecipients:nagase];
    
	//メールの本文を設定
	NSString *emailBody = @"永瀬 宏 先生\n\n\n金沢工業大学 メディア情報学科\n";
    
    [picker setMessageBody:emailBody isHTML:NO];
	[self presentViewController: picker animated:YES completion: nil];;
    [picker release];

}

//中村 純生
- (void)buttonDidPush8 {
    NSLog(@"hello8");
    //    [_player[0] play];
    
    MFMailComposeViewController *picker = [[MFMailComposeViewController alloc] init];
	picker.mailComposeDelegate = self;
    
    //メールアドレス確認
    NSArray *nakamura = [NSArray arrayWithObject:@"junsei@neptune.kanazawa-it.ac.jp"];
    [picker setToRecipients:nakamura];
    
	//メールの本文を設定
	NSString *emailBody = @"中村 純生 先生\n\n\n金沢工業大学 メディア情報学科\n";
    
    [picker setMessageBody:emailBody isHTML:NO];
	[self presentViewController: picker animated:YES completion: nil];;
    [picker release];
}

//山岸 芳夫
- (void)buttonDidPush9 {
    NSLog(@"hello9");
    //    [_player[0] play];
    
    MFMailComposeViewController *picker = [[MFMailComposeViewController alloc] init];
	picker.mailComposeDelegate = self;
    
    //メールアドレス確認
    NSArray *yamagishi = [NSArray arrayWithObject:@"yamagisi@neptune.kanazawa-it.ac.jp"];
    [picker setToRecipients:yamagishi];
    
	//メールの本文を設定
	NSString *emailBody = @"山岸 芳夫 先生\n\n\n金沢工業大学 メディア情報学科\n";
    
    [picker setMessageBody:emailBody isHTML:NO];
	[self presentViewController: picker animated:YES completion: nil];;
    [picker release];
}

//山田 真司
- (void)buttonDidPush10 {
    NSLog(@"hello10");
    //    [_player[0] play];
    
    MFMailComposeViewController *picker = [[MFMailComposeViewController alloc] init];
	picker.mailComposeDelegate = self;
    
    //メールアドレス確認
    NSArray *yamada = [NSArray arrayWithObject:@"m-yamada@neptune.kanazawa-it.ac.jp"];
    [picker setToRecipients:yamada];
    
	//メールの本文を設定
	NSString *emailBody = @"山田 真司 先生\n\n\n金沢工業大学 メディア情報学科\n";
    
    [picker setMessageBody:emailBody isHTML:NO];
	[self presentViewController: picker animated:YES completion: nil];;
    [picker release];

    
}


- (void)touchesEnded:(NSSet*)touches withEvent:(UIEvent*)event {
    [self.navigationController setNavigationBarHidden:NO animated:YES];
}

- (void)mailComposeController:(MFMailComposeViewController*)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError*)error {
	switch (result){
		case MFMailComposeResultCancelled:
			//キャンセルした場合
			break;
		case MFMailComposeResultSaved:
			//保存した場合
			break;
		case MFMailComposeResultSent:
			//送信した場合
            [self setAlert:@"メール送信完了":@""];
			break;
		case MFMailComposeResultFailed:
			[self setAlert:@"メール送信失敗！":@"メールの送信に失敗しました。ネットワークの設定などを確認して下さい"];
			break;
		default:
			break;
	}
	[self dismissViewControllerAnimated:YES completion:NULL];
}

#pragma mark -
#pragma mark アラート表示
-(void) setAlert:(NSString *) aTitle :(NSString *) aDescription {
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:aTitle message:aDescription delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
	[alert show];
	[alert release];
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}

@end
