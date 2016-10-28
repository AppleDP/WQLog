//
//  WQLog.h
//  WQLog
//
//  Created by admin on 16/8/25.
//  Copyright © 2016年 jolimark. All rights reserved.
//

#import <Foundation/Foundation.h>
//#define WQLog(FORMAT,...) fprintf(stderr,">> >> >> 文件: %s : 行号: %d --- 日志: %s << << <<\n",[[[NSString stringWithUTF8String:__FILE__] lastPathComponent] UTF8String],__LINE__,[[NSString stringWithFormat:FORMAT,##__VA_ARGS__] UTF8String])

#define XCODE_COLORS_ESCAPE @"\033[" 
#define XCODE_COLORS_RESET_FG XCODE_COLORS_ESCAPE @"fg;"

#define WQLog(FORMAT,...) NSLog(@">> >> >> 文件: %@ --- 行号: %d --- 日志: %@ << << <<",[[NSString stringWithUTF8String:__FILE__] lastPathComponent],__LINE__,[NSString stringWithFormat:FORMAT,##__VA_ARGS__])

/*********************************** 安 装 了 XcodeColors 后 可 以 输 出 带 颜 色 的 日 志 ***********************************/
#define WQLogInfo(FORMAT,...) NSLog((XCODE_COLORS_ESCAPE @"fg32,102,235;" @">> >> >> 文件: %@ --- 行号: %d --- 日志: %@ << << <<"XCODE_COLORS_RESET_FG),[[NSString stringWithUTF8String:__FILE__] lastPathComponent],__LINE__,[NSString stringWithFormat:FORMAT,##__VA_ARGS__])
#define WQLogError(FORMAT,...) NSLog((XCODE_COLORS_ESCAPE @"fg255,0,0;" @">> >> >> 文件: %@ --- 行号: %d --- 日志: %@ << << <<"XCODE_COLORS_RESET_FG),[[NSString stringWithUTF8String:__FILE__] lastPathComponent],__LINE__,[NSString stringWithFormat:FORMAT,##__VA_ARGS__])
#define WQLogWarn(FORMAT,...) NSLog((XCODE_COLORS_ESCAPE @"fg213,184,109;" @">> >> >> 文件: %@ --- 行号: %d --- 日志: %@ << << <<"XCODE_COLORS_RESET_FG),[[NSString stringWithUTF8String:__FILE__] lastPathComponent],__LINE__,[NSString stringWithFormat:FORMAT,##__VA_ARGS__])
#define WQLogMsg(FORMAT,...) NSLog((XCODE_COLORS_ESCAPE @"fg127,255,0;" @">> >> >> 文件: %@ --- 行号: %d --- 日志: %@ << << <<"XCODE_COLORS_RESET_FG),[[NSString stringWithUTF8String:__FILE__] lastPathComponent],__LINE__,[NSString stringWithFormat:FORMAT,##__VA_ARGS__])

@interface Log : NSObject
+ (void)recodeLog;
+ (void)clearRecode;
@end










