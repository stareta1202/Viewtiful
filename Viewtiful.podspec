#
# Be sure to run `pod lib lint Viewtiful.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Viewtiful'
  s.version          = '0.1.0'
  s.summary          = '🌵Declarative UIKit'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/stareta1202/Viewtiful'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '47838132' => 'stareta1202@gmail.com' }
  s.source           = { :git => 'https://github.com/stareta1202/Viewtiful.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '11.0'

  s.source_files = 'Viewtiful/Classes/**/*'
  
  # s.resource_bundles = {
  #   'Viewtiful' => ['Viewtiful/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.platform = :ios, '11.0'
  s.dependency 'SnapKit', '~> 5.0.0'
  s.dependency 'AddThen', '~> 0.1.3'
#  s.dependency 'RxSwift', '~> 5'
end
