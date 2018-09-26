#
#  Be sure to run `pod spec lint SinoroadSDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name          = 'SinoroadSDK'
  s.version       = '4.2.0'
  s.summary       = 'Sinoroad ios sdk'
  s.homepage      = 'https://github.com/DKJone/SinoroadSDK'
  s.license       = { :type => 'Apache', :file => 'License' }
  s.author        = { 'DKJone' => 'zdk@sinoroad.com' }
  s.platform      = :ios, '8.0'
  s.source        = { :git => 'https://github.com/DKJone/SinoroadSDK.git', :tag => s.version }
  s.source_files  = 'SinoroadSDK/Sources/**/*.{swift,m,h}'

  # 依赖项
  s.dependency 'Alamofire'
  s.dependency 'Moya'
  s.dependency 'SwiftyJSON'
  s.dependency 'PromiseKit'
  s.dependency 'SnapKit'
  s.dependency 'MBProgressHUD'
end