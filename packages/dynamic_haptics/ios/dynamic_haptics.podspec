#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint dynamic_haptics.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'dynamic_haptics'
  s.version          = '0.0.1'
  s.summary          = 'WebHaptics-style haptic feedback for Flutter.'
  s.description      = <<-DESC
WebHaptics-style haptic feedback presets and custom vibration patterns for Flutter.
                       DESC
  s.homepage         = 'https://github.com/dynamichaptics/dynamic_haptics'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'dynamic_haptics' => 'opensource@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'dynamic_haptics/Sources/dynamic_haptics/**/*'
  s.dependency 'Flutter'
  s.frameworks = 'AudioToolbox', 'CoreHaptics', 'UIKit'
  s.platform = :ios, '13.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'

  # If your plugin requires a privacy manifest, for example if it uses any
  # required reason APIs, update the PrivacyInfo.xcprivacy file to describe your
  # plugin's privacy impact, and then uncomment this line. For more information,
  # see https://developer.apple.com/documentation/bundleresources/privacy_manifest_files
  # s.resource_bundles = {'dynamic_haptics_privacy' => ['dynamic_haptics/Sources/dynamic_haptics/PrivacyInfo.xcprivacy']}
end
