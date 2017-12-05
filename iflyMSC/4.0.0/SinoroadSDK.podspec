#
#  Be sure to run `pod spec lint SinoroadSDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name          = 'iflyMSC'
  s.version       = '0.0.1'
  s.summary       = 'Sinoroad ios sdk'
  s.homepage      = 'https://github.com/DKJone/iflyMSC'
  s.license       = { :type => 'Apache', :file => 'License' }
  s.author        = { 'DKJone' => 'zdk@sinoroad.com' }
  s.platform      = :ios, '8.0'
  s.source        = { :git => 'https://github.com/DKJone/iflyMSC.git', :tag => s.version }
  s.source_files  = 'iflyMSC/lib/*'
  s.frameworks    = 'Foundation', 'CoreGraphics', 'UIKit' ,'AVFoundation','SystemConfiguration','CoreTelephoney','AudioToolbox','CoreLocation','Contacts','AddressBook','QuartzCore','libz','libc++'

  # 依赖项

end