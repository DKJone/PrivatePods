#
#  Be sure to run `pod spec lint SinoroadSDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name          = 'StreamClient'
  s.version       = '1.0.1'
  s.summary       = 'StreamClient ios sdk'
  s.homepage      = 'https://github.com/DKJone/StreamClient'
  s.license       = { :type => 'Apache', :file => 'License' }
  s.author        = { 'DKJone' => 'zdk@sinoroad.com' }
  s.platform      = :ios, '8.0'
  s.source        = { :git => 'https://github.com/DKJone/StreamClient.git', :tag => s.version }
  s.source_files  = 'lib/*,lib/*/*'
  s.frameworks    = 'VideoToolbox','CoreMedia','CoreAudio','MobileCoreServices','CoreFoundation', 'CoreGraphics', 'UIKit' ,'AVFoundation','AudioToolbox','CoreLocation','QuartzCore','Foundation'
  s.library       = 'c++','z','iconv.2'
  s.vendored_frameworks = ''
  s.vendored_library    = 'lib/*.a,lib/*/*.a'
  s.public_header_files = 'lib/*.{h}'


  # 依赖项

end