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
    WQLogDefault(@"log");
    WQLogInfo(@"Info Log");
    WQLogError(@"Error Log");
    WQLogWarn(@"Warn Log");
    WQLogMsg(@"Mssage Log");
    WQLogOther(@"Other Log");
    WQCustomLog(@"Custom Log");
    
    NSThread *thread = [[NSThread alloc] initWithTarget:self
                                               selector:@selector(childThread)
                                                 object:nil];
    thread.name = @"WQLogThread";
    [thread start];
}

- (void)childThread {
    NSLog(@" ");
    NSLog(@" ");
    NSLog(@" ");
    WQLogDefault(@"log");
    WQLogInfo(@"Info Log");
    WQLogError(@"Error Log");
    WQLogWarn(@"Warn Log");
    WQLogMsg(@"Mssage Log");
    WQLogOther(@"Other Log");
    WQCustomLog(@"Custom Log");
}

@end







