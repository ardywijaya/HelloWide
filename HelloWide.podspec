#
#  Be sure to run `pod spec lint HelloWideSDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #
  
  spec.name         = "HelloWide"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of HelloWide."

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  spec.description  = <<-DESC
  TODO: Add long description of the pod here.
                   DESC

  spec.homepage     = "https://github.com/ardywijaya/HelloWide.git"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author             = { "Ardy Wijaya" => "ardy.wijaya@primecash.co.id" }
  spec.source = { :http => 'https://github.com/ardywijaya/HelloWideSDK/raw/main/HelloWideSDK.xcframework.zip' }
  spec.platform     = :ios, "12.0"
  spec.ios.deployment_target = "12.0"
  spec.requires_arc = true
  spec.vendored_frameworks = "HelloWideSDK.xcframework"
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  # spec.framework  = "SomeFramework"
  # spec.frameworks = "SomeFramework", "AnotherFramework"
  # spec.dependency "JSONKit", "~> 1.4"

end
