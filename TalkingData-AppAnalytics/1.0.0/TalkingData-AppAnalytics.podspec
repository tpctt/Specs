Pod::Spec.new do |s|
  s.name             = 'TalkingData-AppAnalytics'
  s.version          = "1.0.0"
  s.summary          = 'TalkingData-AppAnalytics 下线前的代码'
  s.license          = 'MIT'
  s.author           = { "Tim" => "491590253@qq.com" }

  s.homepage         = 'http://www.mob.com'
  s.source           = { :git => "https://github.com/tpctt/TalkingData-AppAnalytics.git", :tag => s.version.to_s }
  s.platform         = :ios
  s.ios.deployment_target = "8.0"
  s.frameworks       = 'UIKit', 'JavaScriptCore','SystemConfiguration','CoreTelephony'
  s.libraries        = 'icucore', 'z.1.2.5', 'stdc++'

  # s.default_subspecs    = 'TimCore'
  # s.vendored_frameworks = 'ShareSDK/ShareSDK.framework'
  s.source_files = '*.{h,m,mm,a}' 



end
