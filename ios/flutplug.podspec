#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutplug.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutplug'
  s.version          = '0.0.1'
  s.summary          = 'A new Flutter project.'
  s.description      = <<-DESC
A new Flutter project.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'

  s.platform = :ios, '9.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
  
#  s.resource = 'sampleFramework.xcframework'
#  s.static_framework = true
#  s.framework = 'sampleFramework'


  s.preserve_paths = 'myFrameworks/sampleFramework.xcframework'
  s.xcconfig = {'FRAMEWORK_SEARCH_PATHS' => 'myFrameworks', 'OTHER_LDFLAGS' => '-framework sampleFramework'}
  s.vendored_frameworks = 'myFrameworks/sampleFramework.xcframework'
  
  
#  s.xcconfig = {
#    'OTHER_LDFLAGS' => '-framework sampleFramework',
#    "LIBRARY_SEARCH_PATHS" => '"${PROJECT_DIR}/.."/*'
#  }

#  s.ios.preserve_paths = 'myFrameworks/*.framework'
#  s.ios.vendored_frameworks = 'myFrameworks/sampleFramework.xcframework'
#  s.ios.resource = 'myFrameworks/sampleFramework.xcframework'
#  s.ios.xcconfig = { 'LD_RUNPATH_SEARCH_PATHS' => '"$(PODS_ROOT)/MyPod/myFrameworks"' }
  
end
