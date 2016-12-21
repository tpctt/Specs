Pod::Spec.new do |s|
  s.name             = 'aliyun'
  s.version          = "1.0.0"
  s.summary          = '本工程给出了阿里云移动服务相关产品的使用DEMO  的 framework'
  s.license          = 'MIT'
  s.author           = { "tim" => "491590253@qq.com" }
  
  s.homepage         = 'https://github.com/tpctt/alicloud-ios-demo.git'
  s.source           = { :git => "https://github.com/tpctt/alicloud-ios-demo.git", :tag => s.version.to_s }
  # s.source           = { :git => "https://github.com/tpctt/alicloud-ios-demo.git"  }
  s.platform         = :ios
  s.ios.deployment_target = "8.0"
  s.frameworks       = 'UIKit', 'JavaScriptCore','SystemConfiguration','CoreTelephony'
  s.libraries        = 'icucore', 'z.1.2.5', 'stdc++'
  
  # s.default_subspecs    = 'httpdns_ios'
  s.vendored_frameworks = 'httpdns_ios_demo/AlicloudHttpDNS.framework' 
  
  
  # 核心模块
  
  # s.subspec 'httpdns_ios' do |sp|
  #       # sp.vendored_frameworks = 'ShareSDK/Support/Required/ShareSDKConnector.framework'
  #      sp.libraries = 'icucore', 'z', 'stdc++'
  #       # sp.resources = 'ShareSDK/Support/Required/ShareSDK.bundle'
  #      # sp.vendored_frameworks = 'httpdns_ios_demo/AlicloudHttpDNS.framework' ,'httpdns_ios_demo/AlicloudUtils.framework' , 'httpdns_ios_demo/UTDID.framework' 
  #      # sp.vendored_frameworks = 'httpdns_ios_demo/AlicloudHttpDNS.framework' 

  #      # sp.dependency 'TimCore/TimCore'
        

  #  end
     


end
