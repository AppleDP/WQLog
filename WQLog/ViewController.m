//
//  ViewController.m
//  WQLog
//
//  Created by admin on 16/8/25.
//  Copyright © 2016年 jolimark. All rights reserved.
//

#import "ViewController.h"
#import "WQLog.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    WQLog(@"log");
    WQLogWarn(@"Log");
    WQLogError(@"Log");
    WQLogInfo(@"Log");
    printf("Hello");
    UIColor *color = [UIColor colorWithRed:0.5 green:0.1 blue:0.2 alpha:1.0];
}

@end







