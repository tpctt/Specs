Pod::Spec.new do |s|
  s.name             = 'TimShare'
  s.version          = "1.1.0"
  s.summary          = 'TimShare 基于 timcore 做的 share 模块,方便分享.支持 mob_sharesdk 4.1.0'
  s.license          = 'MIT'
  s.author           = { "tim" => "491590253@qq.com" }

  s.homepage         = 'http://www.mob.com'
  s.source           = { :git => "https://github.com/tpctt/TimShare.git", :tag => s.version.to_s }
  s.platform         = :ios
  s.ios.deployment_target = "8.0"
  s.frameworks       = 'UIKit', 'JavaScriptCore','SystemConfiguration','CoreTelephony'
  s.libraries        = 'icucore', 'z.1.2.5', 'stdc++'

  s.default_subspecs    = 'mob_sharesdk'
  # s.vendored_frameworks = 'ShareSDK/ShareSDK.framework'

  # 核心模块
  
 s.subspec 'TimShare' do |sp|
        # sp.vendored_frameworks = 'ShareSDK/Support/Required/ShareSDKConnector.framework'
       sp.libraries = 'icucore', 'z'
        # sp.resources = 'ShareSDK/Support/Required/ShareSDK.bundle'
       sp.source_files = 'Classes/TimShare/**/*.{h,m,mm}' 

       sp.dependency 'TimCore/TimCore'

       sp.dependency 'XAspect'

        sp.dependency 'ShareSDK3'
        sp.dependency 'MOBFoundation'
        sp.dependency 'ShareSDK3/ShareSDKUI'
        sp.dependency 'ShareSDK3/ShareSDKPlatforms/QQ'
        sp.dependency 'ShareSDK3/ShareSDKPlatforms/SinaWeibo'
        sp.dependency 'ShareSDK3/ShareSDKPlatforms/WeChat'
        sp.dependency 'ShareSDK3/ShareSDKExtension'



   end
    

 




end
