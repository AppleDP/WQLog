//
//  WQLog.m
//  WQLog
//
//  Created by admin on 16/8/25.
//  Copyright © 2016年 jolimark. All rights reserved.
//

#import "WQLog.h"

@interface Log ()

@end

@implementation Log
+ (void)recodeLog{
    NSLog(@"******************************************* 开 启 日 志 *******************************************");
    NSString *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0];
    path = [path stringByAppendingPathComponent:@"WQLog.log"];
    freopen([path cStringUsingEncoding:NSASCIIStringEncoding], "a+", stdout);
    freopen([path cStringUsingEncoding:NSASCIIStringEncoding], "a+", stderr);
    NSString* date;
    NSDateFormatter * formatter = [[NSDateFormatter alloc ] init];
    [formatter setDateFormat:@"YYYY-MM-dd hh:mm:ss"];
    date = [formatter stringFromDate:[NSDate date]];
    NSString *timeNow = [[NSString alloc] initWithFormat:@"%@", date];
    NSLog(@" ");
    NSLog(@" ");
    NSLog(@" ");
    NSLog(@"********************** 日 志 %@ **********************",timeNow);
}

+ (void)clearRecode{
    NSLog(@"******************************************* 清 除 日 志 *******************************************");
    NSString *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0];
    path = [path stringByAppendingPathComponent:@"WQLog.log"];
    NSError *err;
    [[NSFileManager defaultManager] removeItemAtPath:path
                                               error:&err];
}
@end



