#
#  Be sure to run `pod spec lint HHServiceSDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "HHServiceSDK"
  s.version      = "1.0.4"
  s.summary      = "HHServiceSDK usual tools."

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  s.description  = <<-DESC
	  常用的辅助工具方法,帮助减少开发时间
                   DESC

  s.homepage     = "https://github.com/hao1208hao/HHServiceSDK"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Licensing your code is important. See http://choosealicense.com for more info.
  #  CocoaPods will detect a license file if there is a named LICENSE*
  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
  #

  #s.license      = "MIT (example)"
  s.license      = { :type => "MIT", :file => "LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the authors of the library, with email addresses. Email addresses
  #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
  #  accepts just a name if you'd rather not provide an email address.
  #
  #  Specify a social_media_url where others can refer to, for example a twitter
  #  profile URL.
  #

  s.author             = { "haohao" => "424098404@qq.com" }
  # Or just: s.author    = "haohao"
  # s.authors            = { "haohao" => "424098404@qq.com" }
  # s.social_media_url   = "http://twitter.com/haohao"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  # s.platform     = :ios
  s.platform     = :ios, "8.0"

  #  When using multiple platforms
  # s.ios.deployment_target = "5.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP.
  #

  s.source       = { :git => "https://github.com/hao1208hao/HHServiceSDK.git", :tag => "#{s.version}" }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #
  
  # 这里是可以用的
  #s.source_files  =  "HHServiceSDK/{localValid,scanAndQR}/*.{h,m}" ,"HHServiceSDK/*.{h,m}"
  #s.exclude_files = "Classes/Exclude"

  # s.public_header_files = "Classes/**/*.h"


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # s.framework  = "SomeFramework"
  # s.frameworks = "SomeFramework", "AnotherFramework"

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"
   

  s.source_files  =  "HHServiceSDK/*.{h,m}"

  #s.public_header_files = 'HHServiceSDK/{HHServiceSDK,HHSingleton,HHMacros}.h'


  s.subspec 'macros' do |ss|
 
    ss.source_files = 'HHServiceSDK/macros/*.{h,m}' 
    ss.public_header_files = 'HHServiceSDK/macros/*.h' 
 
  end


  s.subspec 'singleton' do |ss|
 
    ss.source_files = 'HHServiceSDK/singleton/*.{h,m}' 
    ss.public_header_files = 'HHServiceSDK/singleton/*.h' 
 
  end

  s.subspec 'sysAlert' do |ss| 
    ss.source_files = 'HHServiceSDK/sysAlert/*.{h,m}'
    ss.public_header_files = 'HHServiceSDK/sysAlert/*.h'  
  end

  s.subspec 'localValid' do |ss|
 
    ss.source_files = 'HHServiceSDK/localValid/*.{h,m}' 
    ss.public_header_files = 'HHServiceSDK/localValid/*.h' 
 
  end


  s.subspec 'scan' do |ss|
 
    ss.source_files = 'HHServiceSDK/scan/*.{h,m}'
    #sss.source_files = 'HHServiceSDK/scanAndQR/*.{h,m}'
    ss.public_header_files = 'HHServiceSDK/scan/{ScanQR,QRTool}.h'
    ss.dependency 'HHServiceSDK/sysAlert'

 
  end


  s.subspec 'useInfo' do |ss|
 
    ss.source_files = 'HHServiceSDK/useInfo/*.{h,m}'
    #sss.source_files = 'HHServiceSDK/scanAndQR/*.{h,m}'
    ss.public_header_files = 'HHServiceSDK/useInfo/*.h'

 
  end

  s.subspec 'location' do |ss|
 
    ss.source_files = 'HHServiceSDK/location/*.{h,m}' 
    ss.public_header_files = 'HHServiceSDK/location/*.h'
    ss.frameworks ='CoreLocation'
    ss.dependency 'HHServiceSDK/useInfo' 
 
  end

  s.subspec 'camera' do |ss|
 
    ss.source_files = 'HHServiceSDK/camera/*.{h,m}' 
    ss.public_header_files = 'HHServiceSDK/camera/*.h'

 
  end


  s.subspec 'baseView' do |ss|
    
    ss.subspec 'WKWebView' do |sss|
      sss.source_files = 'HHServiceSDK/baseView/WKWebView/*.{h,m}' 
      sss.public_header_files = 'HHServiceSDK/baseView/WKWebView/WKWebViewVC.h'
      sss.frameworks ='WebKit' 
      sss.dependency 'HHServiceSDK/macros'

    end


    ss.subspec 'imageCode' do |sss|
      sss.source_files = 'HHServiceSDK/baseView/imageCode/*.{h,m}' 
      sss.public_header_files = 'HHServiceSDK/baseView/imageCode/HHImageCode.h'
      sss.dependency 'HHServiceSDK/macros'

    end 
 
    
 
  end


  s.subspec 'extensions' do |ss|
    
    ss.subspec 'UIView' do |sss|
      sss.source_files = 'HHServiceSDK/extensions/UIView/*.{h,m}' 
      sss.public_header_files = 'HHServiceSDK/extensions/UIView/UIView+HHCorner.h'

    end 

  end


  s.subspec 'toast' do |ss|

    ss.source_files = 'HHServiceSDK/toast/*.{h,m}' 
    ss.public_header_files = 'HHServiceSDK/toast/*.h'


  end




end
