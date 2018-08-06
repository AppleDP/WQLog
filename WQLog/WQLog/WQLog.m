//
//  WQLog.m
//  WQLog
//
//  Created by admin on 16/8/25.
//  Copyright © 2016年 jolimark. All rights reserved.
//

#import "WQLog.h"

@interface WQLog ()

@end

@implementation WQLog
+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    @synchronized(self) {
        if (shareWQLog == nil) {
            shareWQLog = [super allocWithZone:zone];
        }
    }
    return shareWQLog;
}

static WQLog *shareWQLog;
+ (WQLog *)shareWQLog {
    @synchronized(self) {
        if (shareWQLog == nil) {
            shareWQLog = [[self alloc] init];
        }
    }
    return shareWQLog;
}

- (void)recodeLog{
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

- (void)clearRecode{
    NSLog(@"******************************************* 清 除 日 志 *******************************************");
    NSString *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0];
    path = [path stringByAppendingPathComponent:@"WQLog.log"];
    NSError *err;
    [[NSFileManager defaultManager] removeItemAtPath:path
                                               error:&err];
}


- (void)cusLog:(NSString *)file
          line:(int)line
        thread:(NSThread *)thread
           log:(NSString *)log,... {
    [self log:self.wqCustomColor
         file:file
         line:line
       thread:thread
          log:log];
}

- (void)log:(UIColor *)color
       file:(NSString *)file
       line:(int)line
     thread:(NSThread *)thread
        log:(NSString *)log,... {
    @synchronized(self) {
        va_list list;
        if (log) {
            int r = 0, g = 0, b = 0;
            if (color) {
                const CGFloat *components = CGColorGetComponents(color.CGColor);
                r = components[0]*255;
                g = components[1]*255;
                b = components[2]*255;
            }
            NSString *queueName = [NSString stringWithUTF8String:dispatch_queue_get_label(DISPATCH_CURRENT_QUEUE_LABEL)];
            NSString *threadName = [[NSThread currentThread] isMainThread] ? @"Main" : ([[NSThread currentThread].name  isEqual: @""] ? (queueName.length != 0 ? queueName : @"Child") : [NSThread currentThread].name);
            va_start(list, log);
            NSString *msg = [[NSString alloc] initWithFormat:log
                                                   arguments:list];
            va_end(list);
            NSLog((@"%@"
                   @"%@" @">> >> >> 文件: %@ --- 行号: %d --- 线程: %@ --- 日志: %@ << << <<"
                   @"%@"),
                  color == nil ? @"" : XCODE_COLORS_ESCAPE,
                  color == nil ? @"" : [NSString stringWithFormat:@"fg%d,%d,%d;",r,g,b],
                  file,
                  line,
                  threadName,
                  msg,
                  color == nil ? @"" : XCODE_COLORS_RESET_FG);
        }
    }
}
@end



