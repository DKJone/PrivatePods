#
# Be sure to run `pod lib lint DKMapKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'DKMapKit'
    s.version          = '0.1.1'
    s.summary          = '百度地图Swift Api'

    s.homepage         = 'https://github.com/DKJone/DKMapKit'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'dkjone' => '1136165636@qq.com' }
    s.source           = { :git => 'https://github.com/DKJone/DKMapKit.git', :tag => s.version.to_s }

    s.ios.deployment_target = '10.0'

    s.source_files = 'DKMapKit/Classes/**/*', 'DKMapKit/Vendors/*.framework/Headers/**.h'
    s.public_header_files = 'DKMapKit/Classes/**/*.h', 'DKMapKit/Vendors/BadiduMapAPI_Base.framework/Headers/BMKBaseComponent.h', 'DKMapKit/Vendors/BadiduMapAPI_Map.framework/Headers/BMKMapComponent.h'
    s.resources = 'DKMapKit/Vendors/BaiduMapAPI_Map.framework/mapapi.bundle'
    #s.module_name = 'BaiduMapKit'

    s.frameworks   =  'CoreLocation', 'QuartzCore', 'OpenGLES', 'SystemConfiguration', 'CoreGraphics', 'Security', 'CoreTelephony'
    s.libraries    = 'sqlite3.0', 'c++'

    s.vendored_frameworks =  'DKMapKit/Vendors/*.framework'
    s.vendored_libraries = 'DKMapKit/Vendors/thirdlibs/*.a'

    s.preserve_paths = 'DKMapKit/Vendors/*.framework', 'DKMapKit/Vendors/thirdlibs/*.a'
    s.pod_target_xcconfig = {
        #'FRAMEWORK_SEARCH_PATHS' => '${PODS_ROOT}/DKMapKit/Vendors',
        'HEADER_SEARCH_PATHS' => '$(PODS_ROOT)/DKMapKit/Vendors/*.framework/Headers',
        'LD_RUNPATH_SEARCH_PATHS' => '$(PODS_ROOT)/DKMapKit/Vendors/',
        'OTHER_LDFLAGS' => '-ObjC'
    }

    s.prepare_command = <<-EOF

    # 业务Module
    rm -rf DKMapKit/Classes/Modules
    mkdir DKMapKit/Classes/Modules
    touch DKMapKit/Classes/Modules/module.modulemap
    cat <<-EOF > DKMapKit/Classes/Modules/module.modulemap
    framework module Verify {
        umbrella header "DKMapKit.h"
        export *
        link "sqlite3.0"
        link "c++"
    }
    \EOF


    # 创建Base Module
    rm -rf DKMapKit/Vendors/BaiduMapAPI_Base.framework/Modules
    mkdir DKMapKit/Vendors/BaiduMapAPI_Base.framework/Modules
    touch DKMapKit/Vendors/BaiduMapAPI_Base.framework/Modules/module.modulemap
    cat <<-EOF > DKMapKit/Vendors/BaiduMapAPI_Base.framework/Modules/module.modulemap
    framework module BaiduMapAPI_Base {
        umbrella header "BMKBaseComponent.h"
        export *
        link "sqlite3.0"
        link "c++"
    }
    \EOF

    # 创建Map Module
    rm -rf DKMapKit/Vendors/BaiduMapAPI_Map.framework/Modules
    mkdir DKMapKit/Vendors/BaiduMapAPI_Map.framework/Modules
    touch DKMapKit/Vendors/BaiduMapAPI_Map.framework/Modules/module.modulemap
    cat <<-EOF > DKMapKit/Vendors/BaiduMapAPI_Map.framework/Modules/module.modulemap
    framework module BaiduMapAPI_Map {
        umbrella header "BMKMapComponent.h"
        export *
        link "sqlite3.0"
        link "c++"
    }
    \EOF

    # 创建Utils Module
    rm -rf DKMapKit/Vendors/BaiduMapAPI_Utils.framework/Modules
    mkdir DKMapKit/Vendors/BaiduMapAPI_Utils.framework/Modules
    touch DKMapKit/Vendors/BaiduMapAPI_Utils.framework/Modules/module.modulemap
    cat <<-EOF > DKMapKit/Vendors/BaiduMapAPI_Utils.framework/Modules/module.modulemap
    framework module BaiduMapAPI_Utils {
        umbrella header "BMKBaseComponent.h"
        export *
        link "sqlite3.0"
        link "c++"
    }
    \EOF

    # 创建 search
    rm -rf DKMapKit/Vendors/BaiduMapAPI_Search.framework/Modules
    mkdir DKMapKit/Vendors/BaiduMapAPI_Search.framework/Modules
    touch DKMapKit/Vendors/BaiduMapAPI_Search.framework/Modules/module.modulemap
    cat <<-EOF > DKMapKit/Vendors/BaiduMapAPI_Search.framework/Modules/module.modulemap
    framework module BaiduMapAPI_Search {
        umbrella header "BMKBaseComponent.h"
        export *
        link "sqlite3.0"
        link "c++"
    }
    \EOF

    # 创建BaiduMapAPI_Cloud Module
    rm -rf DKMapKit/Vendors/BaiduMapAPI_Cloud.framework/Modules
    mkdir DKMapKit/Vendors/BaiduMapAPI_Cloud.framework/Modules
    touch DKMapKit/Vendors/BaiduMapAPI_Cloud.framework/Modules/module.modulemap
    cat <<-EOF > DKMapKit/Vendors/BaiduMapAPI_Cloud.framework/Modules/module.modulemap
    framework module BaiduMapAPI_Cloud {
        umbrella header "BMKBaseComponent.h"
        export *
        link "sqlite3.0"
        link "c++"
    }
    \EOF


    EOF

end

