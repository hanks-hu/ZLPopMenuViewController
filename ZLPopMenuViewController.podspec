
Pod::Spec.new do |s|

  s.name         = "ZLPopMenuViewController"
  s.version      = "0.0.5"
  s.summary      = "一个自定义弹出框"

  s.description  = <<-DESC
                          一个自定义弹出框
                   DESC
  s.homepage     = "https://github.com/HanksHu/ZLPopMenuViewController"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"

  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }




  s.author    = "zhilin.hu"
  # s.authors            = { "zhilin.hu" => "zhilin.hu@goodbaby.com" }


  # s.platform     = :ios
   s.platform     = :ios, "8.0"

  #  When using multiple platforms
  # s.ios.deployment_target = "5.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"


  s.source   = { :git => "https://github.com/HanksHu/ZLPopMenuViewController.git", :tag => "#{s.version}" }

  s.source_files  = "Code/*.swift"


  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"
   s.framework  = "UIKit"
  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"
   s.requires_arc = true
   s.swift_version = "4.2"
  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

end
