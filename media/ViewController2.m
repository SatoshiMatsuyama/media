//
//  ViewController2.m
//  media
//
//  Created by MatsuyaMac on 2013/09/09.
//  Copyright (c) 2013年 MKProject. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (void)dealloc {
    [details_ release];
    [super dealloc];
}

- (id)init {
    if ( (self = [super init]) ) {
        // tabBar用設定
        self.title = @"Data";
        UIImage* icon = [UIImage imageNamed:@"user.png"];
        self.tabBarItem =
        [[[UITabBarItem alloc] initWithTitle:@"Data" image:icon tag:1] autorelease];
        
//        items_ = [[NSMutableArray alloc] initWithObjects:@"test", nil];
    }
    return self;
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
       
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    items_ = [[NSMutableArray alloc] init];
    [items_ addObject:@"出原 立子           【研究室：68-204】"];
    [items_ addObject:@"江村 伯夫           【研究室：68-310】"];
    [items_ addObject:@"郭　 清蓮           【研究室：67-205】"];
    [items_ addObject:@"鎌田 洋　           【研究室：67-301】"];
    [items_ addObject:@"川田 剛之           【研究室：68-208】"];
    [items_ addObject:@"千石 靖　           【研究室：67-125】"];
    [items_ addObject:@"永瀬 宏　           【研究室：67-312】"];
    [items_ addObject:@"中村 純生           【研究室：68-231】"];
    [items_ addObject:@"山岸 芳夫           【研究室：67-123】"];
    [items_ addObject:@"山田 真司           【研究室：68-305】"];
    
    details_ = [[NSMutableArray alloc] init];
    //出原 立子
    [details_ addObject:@"オフィスアワー : 火3"];
    //江村 伯夫
    [details_ addObject:@"オフィスアワー : 火2"];
    //郭　 清蓮
    [details_ addObject:@"オフィスアワー : 火4,5"];
    //鎌田 洋
    [details_ addObject:@"オフィスアワー : 火3"];
    //川田 剛之 
    [details_ addObject:@"オフィスアワー : 火2"];
    //千石 靖
    [details_ addObject:@"オフィスアワー : 月3"];
    //永瀬 宏
    [details_ addObject:@"オフィスアワー : 火3 (6・208)"];
    //中村 純生
    [details_ addObject:@"オフィスアワー : 月4 水3,4"];
    //山岸 芳夫
    [details_ addObject:@"オフィスアワー : 木5 金2"];
    //山田 真司
    [details_ addObject:@"オフィスアワー : 木5"];
//    details_ = [[NSArray alloc] initWithObjects:@"猿（サル）", @"犬（イヌ）", @"獅子（ライオン）", @"象（ゾウ）", @"象（ゾウ）", @"象（ゾウ）", @"象（ゾウ）", @"象（ゾウ）", @"象（ゾウ）", @"象（ゾウ）", nil];
    
    self.tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height - self.tabBarController.tabBar.bounds.size.height)];
    self.tableView.rowHeight = 50.0; //cellの高さ
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
    
    
}

// dataSource例１
-(void)tableView:(UITableView*)tableView
commitEditingStyle:(UITableViewCellEditingStyle)editingStyle
forRowAtIndexPath:(NSIndexPath*)indexPath{
    
    if(editingStyle == UITableViewCellEditingStyleDelete){
        // Delete時の処理をここに書く
    }else if(editingStyle == UITableViewCellEditingStyleInsert){
        // Insert時の処理をここに書く
    }
}

//// delegate例１
//-(CGFloat)tableView:(UITableView*)tableView
//heightForRowAtIndexPath:(NSIndexPath *)indexPath{
//    
//    if(indexPath.section == 0){
//        return 30.0;  // １番目のセクションの行の高さを30にする
//    }else{
//        return 50.0;  // それ以外の行の高さを50にする
//    }
//}

- (NSInteger)tableView:(UITableView*)tableView numberOfRowsInSection:(NSInteger)section {
    NSLog(@"tablecell:%d",[items_ count]);
    return [items_ count];
    return [details_ count];
}

// TableView の各行の中身をつたえる
- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    UITableViewCell *cell = [[UITableViewCell alloc] init];
    
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"Cell"];
    
//    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"Cell"];
//    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:@"Cell"];
//    //↑ここらへんもためしてみるといいかも
    
    cell.textLabel.text = [items_ objectAtIndex:indexPath.row];
    cell.detailTextLabel.text = [details_ objectAtIndex:indexPath.row];
    return cell;
}

- (void)viewWillAppear:(BOOL)animated
{
//    NSLog(@"reload");
//    items_ = [[NSMutableArray alloc]init];
    [self.tableView reloadData];
    [super viewWillAppear:animated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];

}

@end
