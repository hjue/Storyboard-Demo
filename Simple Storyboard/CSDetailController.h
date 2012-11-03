//
//  CSDetailController.h
//  Simple Storyboard
//
//  Created by haoyu on 12-11-3.
//  Copyright (c) 2012年 haoyu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CSDetailController : UIViewController

@property (weak, nonatomic) IBOutlet UITextView *textView;

@property (copy,nonatomic) NSDictionary *selection;

@property (weak,nonatomic) id delegate;

@end
