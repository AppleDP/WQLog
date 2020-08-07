
Pod::Spec.new do |s|

  s.name         = "WQLog"
  s.version      = "2.1.1"
  s.summary      = "A third-party framework of console log"
  s.description  = <<-DESC
  控制台日志输出，可以将日志保存到文件，还可捕获 OC 异常或 Singal 异常到文件
                   DESC
  s.homepage     = "https://github.com/AppleDP/WQLog"
  s.license      = "MIT"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "AppleDP" => "AppleDP@163.com" }
  s.requires_arc = true
  s.source       = { :git => "https://github.com/AppleDP/WQLog.git", :tag => s.version }
  s.source_files = "WQLog/**/WQLog/WQLog.{h,m}"
  s.platform     = :ios, '5.0'
end
