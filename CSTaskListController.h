//
//  CSTaskListController.h
//  Simple Storyboard
//
//  Created by haoyu on 12-10-23.
//  Copyright (c) 2012年 haoyu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CSTaskListController : UITableViewController

@property(strong,nonatomic) NSMutableArray *tasks;

@property (copy,nonatomic) NSDictionary *editedSelection;

@end
