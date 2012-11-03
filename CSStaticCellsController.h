//
//  CSStaticCellsController.h
//  Simple Storyboard
//
//  Created by haoyu on 12-10-23.
//  Copyright (c) 2012年 haoyu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CSStaticCellsController : UITableViewController
@property (strong, nonatomic) IBOutlet UILabel *dateLabel;
@property (strong, nonatomic) IBOutlet UILabel *timeLabel;

@property (strong, nonatomic) IBOutlet UIButton *btnPress;
@end
