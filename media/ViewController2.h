//
//  ViewController2.h
//  media
//
//  Created by MatsuyaMac on 2013/09/09.
//  Copyright (c) 2013年 MKProject. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController2 : UIViewController <UITableViewDataSource, UITableViewDelegate>
{
    UITableViewStyle style;
    UITableView* tableView;
@private
    NSMutableArray* items_;
    NSMutableArray* details_;
    NSArray* dataSource_;
   
@protected
//    NSArray* details_;
    UITableViewCellStyle cellStyle_;
}

@property(nonatomic, retain)UITableView *tableView;


@end
