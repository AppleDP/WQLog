//
//  AppDelegate.m
//  WQLog
//
//  Created by admin on 16/8/25.
//  Copyright © 2016年 jolimark. All rights reserved.
//

#import "AppDelegate.h"
#import "WQLog.h"

@interface AppDelegate ()

@end

@implementation AppDelegate
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    NSString *dir = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0] stringByAppendingPathComponent:@"WQLog"];
    
    // 记录日志文件
    NSString *logPath = [WQLogCtrl recordLogWithDir:dir];
    NSLog(@"日志地址: %@",logPath);
    
    // 清空日志文件
    [WQLogCtrl clearLogCachesWithDir:dir delete:^NSArray<NSString *> * _Nullable(NSArray<NSString *> * _Nullable logPaths) {
        NSArray<NSString *> *deletePaths;
        if (logPaths.count > 0) {
            NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF!=%@",logPath];
            deletePaths = [logPaths filteredArrayUsingPredicate:predicate];
        }
        return deletePaths;
    }];
    return YES;
}
@end







