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
    [items_ addObject:@"出原 立子"];
    [items_ addObject:@"江村 伯夫"];
    [items_ addObject:@"郭　 清蓮"];
    [items_ addObject:@"鎌田 洋"];
    [items_ addObject:@"川田 剛之"];
    [items_ addObject:@"千石 靖"];
    [items_ addObject:@"永瀬 宏"];
    [items_ addObject:@"中村 純生"];
    [items_ addObject:@"山岸 芳夫"];
    [items_ addObject:@"山田 真司"];

    details_ = [[NSArray alloc] initWithObjects:@"猿（サル）", @"犬（イヌ）", @"獅子（ライオン）", @"象（ゾウ）", @"象（ゾウ）", @"象（ゾウ）", @"象（ゾウ）", @"象（ゾウ）", @"象（ゾウ）", @"象（ゾウ）", nil];
    
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
    UITableViewCell *cell = [[UITableViewCell alloc] init];
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
