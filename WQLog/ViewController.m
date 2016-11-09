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
    WQLogInfo(@"Info    Log");
    WQLogError(@"Error   Log");
    WQLogWarn(@"Warn    Log");
    WQLogMsg(@"Mssage  Log");
}

@end







