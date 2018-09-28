//
//  ViewController.m
//  JustDoit
//
//  Created by jack young on 2018/9/26.
//  Copyright © 2018年 jack young. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *label = [[UILabel alloc] initWithFrame:self.view.bounds];
    label.text = @"hello world";
    label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:label];
    
    CGRect frame = CGRectMake(100, 100, 50, 50);
    
    UIButton *button = [[UIButton alloc] initWithFrame:frame];
    [button setBackgroundColor:[UIColor redColor]];
    [button setTitle:@"sdfdsfsf" forState:UIControlStateNormal];
    [self.view addSubview:button];
    
}


@end
