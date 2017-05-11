Pod::Spec.new do |s|
  s.name                  = "PhotoBrowser"
  s.version               = "4.0.0"
  s.summary               = "PhotoBrowser"
  s.homepage              = "https://github.com/timRabbit/PhotoBrowser"
  s.social_media_url      = "https://github.com/timRabbit/PhotoBrowser"
  s.platform     = :ios,'8.0'
  s.license               = { :type => "MIT", :file => "LICENSE" }
  s.author                = { " tim" => "491590253@qq.com" }
  s.source                = { :git => "https://github.com/timRabbit/ZLPhotoBrowser.git",:tag => s.version.to_s  }
  s.ios.deployment_target = "8.0"
  s.requires_arc          = true
  s.framework             = "CoreFoundation","Foundation","CoreGraphics","Security","UIKit"
  s.library		= "z.1.1.3","stdc++","sqlite3"
  s.source_files = 'PhotoBrowser/PhotoBrowser'
  #s.resources = 'SIDADView/*.{bundle}'
  # s.dependency 'XAspect'
  # s.dependency 'TimCore/TimCore','~>1.2.12'
  # s.dependency 'JPush-iOS-SDK','~>3.0.2'

  s.ios.frameworks = 'UserNotifications'


#  s.subspec 'YMCitySelect' do |sp|
#   sp.source_files = 'YMCitySelect/*.{h,m,mm}'
  #  sp.resources   = "Extend/**/*.{png}"
#   sp.requires_arc = true
#   sp.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libz, $(SDKROOT)/usr/include/libxml2', 'CLANG_CXX_LANGUAGE_STANDARD' => 'gnu++0x', 'CLANG_CXX_LIBRARY' => 'libstdc++', 'CLANG_WARN_DIRECT_OBJC_ISA_USAGE' => 'YES'}
   
  #  sp.dependency 'FontIcon'
   # sp.prefix_header_contents = '#import "EasyIOS.h"'
#  end
end
