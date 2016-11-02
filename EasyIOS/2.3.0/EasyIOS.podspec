Pod::Spec.new do |s|
  s.name                  = "EasyIOS"
  s.version               = "2.3"
  s.summary               = "EasyIOS is a MVVM frameWork base on AFNetworking and ReactiveCocoa"
  s.homepage              = "http://easyios.iosx.me"
  s.social_media_url      = "http://www.iosx.me"
  s.platform     = :ios,'6.0'
  s.license               = { :type => "MIT", :file => "LICENSE" }
  s.author                = { "zhuchao" => "zhuchao@iosx.me" }
  s.source                = { :git => "https://github.com/timRabbit/EasyIOS.git",:tag => s.version.to_s }
#  s.source_files = '*.{h,m,mm}'
 # s.source_files = 'Easy/**/*.{h,m,mm}'
 # s.source_files = 'Extend/**/*.{h,m,mm}'
  
  s.public_header_files = 'Easy/Easy.h','Easy/EasyIOS.h'
  s.source_files = 'Easy/EasyIOS.h','Easy/Easy.h'
  
  s.ios.deployment_target = "6.0"
  s.requires_arc          = true
  s.framework             = "CoreFoundation","Foundation","CoreGraphics","Security","UIKit"
  s.library		= "z.1.1.3","stdc++","sqlite3"
  
  
  
  s.dependency 'ReactiveCocoa','2.5'
  s.dependency 'GCDObjC'
  s.dependency 'FLKAutoLayout','0.1.1'
  s.dependency 'FontIcon'
  
  
   s.subspec 'Extend' do |ss|
    ss.source_files = 'Extend/**/*.{h,m}'
    ss.public_header_files = 'Extend/**/*.h'
    #ss.watchos.frameworks = 'MobileCoreServices', 'CoreGraphics'
    #ss.ios.frameworks = 'MobileCoreServices', 'CoreGraphics'
    #ss.osx.frameworks = 'CoreServices'
     
     ss.dependency 'MBProgressHUD'

     
   end
  
  s.subspec 'Core' do |ss|
    ss.source_files = 'Easy/Core/*.{h,m}','Easy/Easy.h'
    #ss.public_header_files = 'Easy/Core/*.h'
    #ss.watchos.frameworks = 'MobileCoreServices', 'CoreGraphics'
    #ss.ios.frameworks = 'MobileCoreServices', 'CoreGraphics'
    #ss.osx.frameworks = 'CoreServices'
    ss.dependency 'TMCache'
    ss.dependency 'AFNetworking'
  
    ss.public_header_files = 'Easy/Easy.h'
    
  
  end
  
  s.subspec 'Lib' do |ss|
    ss.source_files = 'Easy/Lib/*.{h,m}'
    ss.public_header_files = 'Easy/Lib/*.h'
    #ss.watchos.frameworks = 'MobileCoreServices', 'CoreGraphics'
    #ss.ios.frameworks = 'MobileCoreServices', 'CoreGraphics'
    #ss.osx.frameworks = 'CoreServices'
  end
  
  s.subspec 'Tools' do |ss|
    ss.source_files = 'Easy/Tools/*.{h,m}'
    ss.public_header_files = 'Easy/Tools/*.h'
    #ss.watchos.frameworks = 'MobileCoreServices', 'CoreGraphics'
    #ss.ios.frameworks = 'MobileCoreServices', 'CoreGraphics'
    #ss.osx.frameworks = 'CoreServices'
  end
  
end
