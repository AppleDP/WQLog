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
    WQLogDef(@"Def Log");
    WQLogInf(@"Inf Log");
    WQLogErr(@"Err Log");
    WQLogWar(@"War Log");
    WQLogMes(@"Msg Log");
    WQLogOth(@"Oth Log");
    
    NSThread *thread = [[NSThread alloc] initWithTarget:self
                                               selector:@selector(childThread)
                                                 object:nil];
    thread.name = @"WQLogThread";
    [thread start];
}

- (void)childThread {
    WQLogDef(@"Def Log");
    WQLogInf(@"Inf Log");
    WQLogErr(@"Err Log");
    WQLogWar(@"War Log");
    WQLogMes(@"Msg Log");
    WQLogOth(@"Oth Log");
}
@end
