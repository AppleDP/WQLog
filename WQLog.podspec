
Pod::Spec.new do |s|

  s.name         = "WQLog"
  s.version      = "2.0.1"
  s.summary      = "A third-party framework of console log"
  s.description  = <<-DESC
  A third-party framework of console output.And, if you install XcodeColors,you can output the log with color
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
