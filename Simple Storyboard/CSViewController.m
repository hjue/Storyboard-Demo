//
//  CSViewController.m
//  Simple Storyboard
//
//  Created by haoyu on 12-10-23.
//  Copyright (c) 2012年 haoyu. All rights reserved.
//

#import "CSViewController.h"
#import "CSTaskListController.h"

@interface CSViewController ()

@end

@implementation CSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)done:(UIStoryboardSegue *)segue
{
    NSLog(@"done");

    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSLog(@"CSViewController prepareForSegue");
    CSTaskListController *destination = [segue destinationViewController];
    
//    [destination.tableView beginUpdates];
    NSArray *row = [NSArray arrayWithObjects:@"Row A",@"Row B", nil];
    [destination.tableView insertRowsAtIndexPaths:row withRowAnimation:UITableViewRowAnimationBottom];
//    [destination.tableView endUpdates];
}
@end
