
Pod::Spec.new do |s|

  s.name         = "ZLPopMenuViewController"
  s.version      = "0.0.3"
  s.summary      = "一个自定义弹出框"

  s.description  = <<-DESC
                          一个自定义弹出 框
                   DESC
  s.homepage     = "https://github.com/HanksHu/ZLPopMenuViewController"

  s.license      = "MIT"
  s.author    = "zhilin.hu"
  s.platform     = :ios, "8.0"
  s.source   = { :git => "https://github.com/HanksHu/ZLPopMenuViewController.git", :tag => "#{s.version}" }
  s.source_files  = "Code/*.swift"
  s.framework  = "UIKit"
  s.requires_arc = true
end
