Pod::Spec.new do |s|
  s.name             = 'TimCore'
  s.version          = "1.0.1"
  s.summary          = 'ShareSDK is the most comprehensive Social SDK in the world,which share easily with 40+ platforms.'
  s.license          = 'MIT'
  s.author           = { "Jinghuang Liu" => "liujinghuang@icloud.com" }

  s.homepage         = 'http://www.mob.com'
  s.source           = { :git => "https://github.com/timRabbit/TimCore.git", :tag => s.version.to_s }
  s.platform         = :ios
  s.ios.deployment_target = "8.0"
  s.frameworks       = 'UIKit', 'JavaScriptCore','SystemConfiguration','CoreTelephony'
  s.libraries        = 'icucore', 'z.1.2.5', 'stdc++'

  s.default_subspecs    = 'TimCore'
  # s.vendored_frameworks = 'ShareSDK/ShareSDK.framework'

  # 核心模块
    s.subspec 'TimCore' do |sp|
        # sp.vendored_frameworks = 'ShareSDK/Support/Required/ShareSDKConnector.framework'
        sp.libraries = 'icucore', 'z', 'stdc++'
        # sp.resources = 'ShareSDK/Support/Required/ShareSDK.bundle'
        sp.source_files = 'Classes/TimCore' 
    end
  

    s.subspec 'TimJpush' do |sp|
        # sp.vendored_frameworks = 'ShareSDK/Support/Required/ShareSDKConnector.framework'
        sp.libraries = 'icucore', 'z', 'stdc++'
        # sp.resources = 'ShareSDK/Support/Required/ShareSDK.bundle'
        sp.source_files = 'Classes/TimJpush' 
        
        s.dependency 'XAspect'
        s.dependency 'JPush'


    end

 s.subspec 'TimShare' do |sp|
        # sp.vendored_frameworks = 'ShareSDK/Support/Required/ShareSDKConnector.framework'
       sp.libraries = 'icucore', 'z', 'stdc++'
        # sp.resources = 'ShareSDK/Support/Required/ShareSDK.bundle'
       sp.source_files = 'Classes/TimShare' 
        
       s.dependency 'XAspect'
       s.dependency 'ShareSDK3'
       s.dependency 'ShareSDK3/ShareSDKExtension'


   end

end
