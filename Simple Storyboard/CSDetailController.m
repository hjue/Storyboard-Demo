//
//  CSDetailController.m
//  Simple Storyboard
//
//  Created by haoyu on 12-11-3.
//  Copyright (c) 2012年 haoyu. All rights reserved.
//

#import "CSDetailController.h"

@interface CSDetailController ()

@end

@implementation CSDetailController

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
    self.textView.text = [self.selection objectForKey:@"object"];
    [self.textView becomeFirstResponder];
	// Do any additional setup after loading the view.
}


-(void) viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    if ([self.delegate respondsToSelector:@selector(setEditedSelection:)]) {
        [self.textView endEditing:YES];
        id object = self.textView.text;
        NSIndexPath *indexPath = [self.selection objectForKey:@"indexPath"];
        NSDictionary *editedSelection = [NSDictionary dictionaryWithObjectsAndKeys:
                                         indexPath,@"indexPath",
                                         object,@"object",
                                         nil];
        [self.delegate setValue:editedSelection forKey:@"editedSelection"];
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setTextView:nil];
    [self setTextView:nil];
    [super viewDidUnload];
}
@end
