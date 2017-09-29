Pod::Spec.new do |s|
  s.name                  = "EasyIOS"
  s.version               = "2.4.3"
  s.summary               = "EasyIOS is a MVVM frameWork base on AFNetworking and ReactiveCocoa"
  s.homepage              = "http://easyios.iosx.me"
  s.social_media_url      = "http://www.iosx.me"
  s.platform     = :ios,'6.0'
  s.license               = { :type => "MIT", :file => "LICENSE" }
  s.author                = { "zhuchao" => "zhuchao@iosx.me" }
  s.source                = { :git => "https://github.com/tpctt/EasyIOS.git",:tag => s.version.to_s }
#  s.source_files = '*.{h,m,mm}'
 # s.source_files = 'Easy/**/*.{h,m,mm}'
 # s.source_files = 'Extend/**/*.{h,m,mm}'
  
  s.ios.deployment_target = "6.0"
  s.requires_arc          = true
  s.framework             = "CoreFoundation","Foundation","CoreGraphics","Security","UIKit"
  s.library		= "z.1.1.3","stdc++","sqlite3"
  s.subspec 'Easy' do |sp|
    sp.source_files = '*.{h,m,mm}','Easy/**/*.{h,m,mm}','Extend/**/*.{h,m,mm}'
    sp.resources   = "Extend/**/*.{png}"
    sp.requires_arc = true
    sp.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libz, $(SDKROOT)/usr/include/libxml2', 'CLANG_CXX_LANGUAGE_STANDARD' => 'gnu++0x', 'CLANG_CXX_LIBRARY' => 'libstdc++', 'CLANG_WARN_DIRECT_OBJC_ISA_USAGE' => 'YES'}
    sp.dependency 'ReactiveCocoa','2.5'
    sp.dependency 'MBProgressHUD'
#    sp.dependency 'JSONModel'
#    sp.dependency 'SharkORM'
    sp.dependency 'TMCache'
#    sp.dependency 'UIActivityIndicator-for-SDWebImage'
#    sp.dependency 'AFNetworking'
    sp.dependency 'GCDObjC'
    sp.dependency 'FLKAutoLayout','0.1.1'
    sp.dependency 'FontIcon'
    sp.prefix_header_contents = '#import "EasyIOS.h"'
  end
end
