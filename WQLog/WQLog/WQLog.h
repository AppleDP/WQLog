//
//  WQLog.h
//  WQLog
//
//  Created by admin on 16/8/25.
//  Copyright © 2016年 jolimark. All rights reserved.
//

#import <Foundation/Foundation.h>
//#define WQLog(FORMAT,...) fprintf(stderr,">> >> >> 文件: %s : 行号: %d --- 日志: %s\n << << <<",[[[NSString stringWithUTF8String:__FILE__] lastPathComponent] UTF8String],__LINE__,[[NSString stringWithFormat:FORMAT,##__VA_ARGS__] UTF8String])

#define WQLog(FORMAT,...) NSLog(@">> >> >> 文件: %@ --- 行号: %d --- 日志: %@ << << <<",[[NSString stringWithUTF8String:__FILE__] lastPathComponent],__LINE__,[NSString stringWithFormat:FORMAT,##__VA_ARGS__])

@interface Log : NSObject
+ (void)recodeLog;
+ (void)clearRecode;
@end










