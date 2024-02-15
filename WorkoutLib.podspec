#
# Be sure to run `pod lib lint VitaleSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'WorkoutLib'
  s.version          = '1.7.3'
  s.summary          = 'Intelligent, automatic, comprehensive, adaptive Training System'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.homepage         = 'https://www.myvitale.com/'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Miguel Muñoz' => 'miguel.munoz@myvitale.com' }
  s.source           = { :git => 'https://github.com/miguelmunozfer/WorkoutLib', :tag => "1.7.3" }
  s.resources = ["**/*.lproj", "**/*.strings"]
  s.ios.deployment_target = '12.0'
  s.vendored_frameworks = 'WorkoutLib.xcframework', 'WeFitterLib.xcframework'
  s.dependency 'Alamofire', '5.4.0'
  s.dependency 'SwiftyJSON', '5.0.0'
  s.dependency 'SwiftDate', '6.2.0'
  s.dependency  'Localize-Swift', '3.2.0'
  s.dependency  'FMDB', '2.7.5'
  s.dependency  'YoutubePlayer-in-WKWebView', '0.3.4'
  s.dependency  'HCVimeoVideoExtractor', '0.0.1'
  s.dependency  'Instructions', '1.3.1'
  s.dependency  'DGCharts', '5.0.0'
  s.dependency  "Hero"
  # s.swift_version = "5.0"
  s.swift_versions = ['4.0', '4.2', '5.0']
 # s.xcconfig = { 'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES' }
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
