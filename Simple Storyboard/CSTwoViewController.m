//
//  CSTwoViewController.m
//  Simple Storyboard
//
//  Created by haoyu on 12-10-26.
//  Copyright (c) 2012年 haoyu. All rights reserved.
//

#import "CSTwoViewController.h"
#import "CSTaskListController.h"

@interface CSTwoViewController ()

@end

@implementation CSTwoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSLog(@"CSTwoViewController prepareForSegue");
    CSTaskListController *destination = [segue destinationViewController];
    
    [destination.tableView beginUpdates];
    NSArray *row = [NSArray arrayWithObjects:@"Row A",@"Row B", nil];
    [destination.tableView insertRowsAtIndexPaths:row withRowAnimation:UITableViewRowAnimationBottom];
    [destination.tableView endUpdates];
}

@end
