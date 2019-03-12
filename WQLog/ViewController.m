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
    WQLogDef(@"Default Log");
    WQLogInf(@"Info Log");
    WQLogErr(@"Error Log");
    WQLogWar(@"Warn Log");
    WQLogMes(@"Mssage Log");
    WQLogOth(@"Other Log");
    
    NSLog(@" ");
    NSLog(@" ");
    NSLog(@" ");
    NSThread *thread = [[NSThread alloc] initWithTarget:self
                                               selector:@selector(childThread)
                                                 object:nil];
    thread.name = @"WQLogThread";
    [thread start];
}

- (void)childThread {
    WQLogDef(@"Default Log\n");
    WQLogInf(@"Info Log");
    WQLogErr(@"Error Log");
    WQLogWar(@"Warn Log");
    WQLogMes(@"Mssage Log");
    WQLogOth(@"Other Log");
}

- (void)dealloc {
    NSLog(@"dealloc");
}

@end
