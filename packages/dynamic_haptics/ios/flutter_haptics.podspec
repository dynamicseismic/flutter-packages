#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_haptics.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_haptics'
  s.version          = '0.0.1'
  s.summary          = 'WebHaptics-style haptic feedback for Flutter.'
  s.description      = <<-DESC
WebHaptics-style haptic feedback presets and custom vibration patterns for Flutter.
                       DESC
  s.homepage         = 'https://github.com/flutterhaptics/flutter_haptics'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'flutter_haptics' => 'opensource@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'flutter_haptics/Sources/flutter_haptics/**/*'
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
  # s.resource_bundles = {'flutter_haptics_privacy' => ['flutter_haptics/Sources/flutter_haptics/PrivacyInfo.xcprivacy']}
end
