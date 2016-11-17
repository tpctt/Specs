Pod::Spec.new do |s|
  s.name             = 'TimCore'
  s.version          = "1.0.7"
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
        # sp.resources = 'ShareSDK/Support/Required/ShareSDK.bundle'
        sp.source_files = 'Classes/TimCore/**/*.{h,m,mm}' 
        sp.source_files = 'Classes/TimCore/*.{h,m,mm}' 
        # sp.public_header_files = 'Classes/TimCore/*.h'

    end
  

    s.subspec 'TimJpush' do |sp|
        # sp.vendored_frameworks = 'ShareSDK/Support/Required/ShareSDKConnector.framework'
        sp.libraries = 'icucore', 'z', 'stdc++'
        # sp.resources = 'ShareSDK/Support/Required/ShareSDK.bundle'
        sp.source_files = 'Classes/TimJpush/**/*.{h,m,mm}' 
        
       sp.dependency 'TimCore/TimCore'

        sp.dependency 'XAspect'
        sp.dependency 'JPush'


    end

 s.subspec 'TimShare' do |sp|
        # sp.vendored_frameworks = 'ShareSDK/Support/Required/ShareSDKConnector.framework'
       sp.libraries = 'icucore', 'z', 'stdc++'
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
   

    s.subspec 'TimAFAppConnectClient' do |sp|
        # sp.vendored_frameworks = 'ShareSDK/Support/Required/ShareSDKConnector.framework'
        sp.libraries = 'icucore', 'z', 'stdc++'
        # sp.resources = 'ShareSDK/Support/Required/ShareSDK.bundle'
        sp.source_files = 'Classes/TimAFAppConnectClient/**/*.{h,m,mm}' 
        
        # sp.dependency 'TimCore/TimAFAppConnectClient'

        sp.dependency 'AFNetworking','~> 3.1.0'


    end


 s.subspec 'TimBaseListViewModel' do |sp|
        # sp.vendored_frameworks = 'ShareSDK/Support/Required/ShareSDKConnector.framework'
        sp.libraries = 'icucore', 'z', 'stdc++'
        # sp.resources = 'ShareSDK/Support/Required/ShareSDK.bundle'
        sp.source_files = 'Classes/TimBaseListViewModel/**/*.{h,m,mm}' 
        
        sp.dependency 'TimCore/TimAFAppConnectClient'
        # sp.dependency 'TimCore/TimAFAppConnectClient'

        sp.dependency 'TMCache'
        sp.dependency 'ReactiveCocoa','~>2.5'
        


    end




end
