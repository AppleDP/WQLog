# WQLog
Console Log
<img src="https://github.com/AppleDP/WQLog/blob/master/Effect/Effect.png" alt="Console Log" title="Console Log">
# Install 
```objective-c
pod 'WQLog', '~> 1.0.0'
```
# Usage
```objective-c
    // 自定义日志输出颜色
    [SINGLETONWQLOG setWqCustomColor:WQColor(255, 255, 0, 1)];
    
    // 带色日志输出（安装了 Xcode Colors 插件）
    WQLogDef(@"Default Log");
    WQLogInf(@"Info Log");
    WQLogErr(@"Error Log");
    WQLogWar(@"Warn Log");
    WQLogMes(@"Mssage Log");
    WQLogOth(@"Other Log");
    WQLogCus(@"Custom Log");
```
