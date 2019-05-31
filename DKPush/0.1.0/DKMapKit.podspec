#
# Be sure to run `pod lib lint DKPush.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DKPush'
  s.version          = '0.1.0'
  s.summary          = 'JPush Swift Api.'

  s.homepage         = 'https://github.com/DKJone/DKPush'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = {  'dkjone' => '1136165636@qq.com' }
  s.source           = { :git => 'https://github.com/DKJone/DKPush.git', :tag => s.version.to_s }
  
  s.ios.deployment_target = '11.0'
  s.source_files = 'DKPush/Classes/**/*', 'DKPush/Vendors/**.h'
  s.public_header_files = 'DKPush/Vendors/*.h'
  s.frameworks   =  'UIKit', 'CFNetwork', 'OpenGLES', 'CoreTelephony', 'SystemConfiguration', 'CoreGraphics', 'Foundation','Security' ,'UserNotifications'
  
  s.libraries = 'z','resolv'
  s.vendored_libraries = 'DKPush/Vendors/thirdlibs/*.a'
  s.preserve_paths = 'DKPush/Vendors/thirdlibs/*.a'

  s.pod_target_xcconfig = {
      'HEADER_SEARCH_PATHS' => '$(PODS_ROOT)/DKPush/Vendors/',
      'LD_RUNPATH_SEARCH_PATHS' => '$(PODS_ROOT)/DKPush/Vendors/',
      'OTHER_LDFLAGS' => '-all_load' 
  }

  s.prepare_command = <<-EOF

  # 业务Module
  rm -rf DKPush/Classes/Modules
  mkdir DKPush/Classes/Modules
  touch DKPush/Classes/Modules/module.modulemap
  cat <<-EOF > DKPush/Classes/Modules/module.modulemap
  framework module Verify {
    umbrella header "DKPush.h"
    export *
    link "z"
    link "resolv"
    link "jcore"
    link "jpush"
  }
  \EOF

  EOF


end
