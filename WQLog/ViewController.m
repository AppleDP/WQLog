//
//  ViewController.m
//  WQLog
//
//  Created by admin on 16/8/25.
//  Copyright © 2016年 jolimark. All rights reserved.
//

#import "ViewController.h"
#import "WQLog.h"

typedef struct Test
{
    int a;
    int b;
}Test;

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
    // 1、Signal 崩溃（在 Debug 状态下不能获取 Signal 日志信息）
    Test *pTest = {1,2};
    free(pTest);
    pTest->a = 5;
    
    // 2、OC 崩溃
//    NSArray *array= @[@"tom",@"xxx",@"ooo"];
//    [array objectAtIndex:5];
    WQLogDef(@"Def Log");
    WQLogInf(@"Inf Log");
    WQLogErr(@"Err Log");
    WQLogWar(@"War Log");
    WQLogMes(@"Msg Log");
    WQLogOth(@"Oth Log");
}
@end
