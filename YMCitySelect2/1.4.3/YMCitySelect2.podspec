Pod::Spec.new do |s|
  s.name                  = "YMCitySelect2"
  s.version               = "1.4.3"
  s.summary               = "选择城市的 pod , 这个版本 支持横竖屏切换,支持更多属性设置和屏幕适配"
  s.homepage              = "https://github.com/tpctt/YMCitySelect2"
  s.social_media_url      = "https://github.com/tpctt/YMCitySelect2"
  s.platform     = :ios,'6.0'
  s.license               = { :type => "MIT", :file => "LICENSE" }
  s.author                = { " tim" => "491590253@qq.com" }
  s.source                = { :git => "https://github.com/tpctt/YMCitySelect2.git",:tag =>  s.version.to_s   }
  s.ios.deployment_target = "6.0"
  s.requires_arc          = true
  s.framework             = "CoreFoundation","Foundation","CoreGraphics","Security","UIKit"
  s.library		= "z.1.1.3","stdc++","sqlite3"
  s.source_files = 'YMCitySelect/**/*.{h,m,mm}'
  s.resources = 'YMCitySelect/*.{bundle}'


#  s.subspec 'YMCitySelect' do |sp|
#   sp.source_files = 'YMCitySelect/*.{h,m,mm}'
  #  sp.resources   = "Extend/**/*.{png}"
#   sp.requires_arc = true
#   sp.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libz, $(SDKROOT)/usr/include/libxml2', 'CLANG_CXX_LANGUAGE_STANDARD' => 'gnu++0x', 'CLANG_CXX_LIBRARY' => 'libstdc++', 'CLANG_WARN_DIRECT_OBJC_ISA_USAGE' => 'YES'}
   
  #  sp.dependency 'FontIcon'
   # sp.prefix_header_contents = '#import "EasyIOS.h"'
#  end
end
