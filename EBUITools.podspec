#
# Be sure to run `pod lib lint EBUITools.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'EBUITools'
  s.version          = '1.0.1'
  s.summary          = 'UI Library created to help you'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/ezequielbrrt/EBUITools'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ezequielbrrt' => 'ezequielbrrt@gmail.com' }
  s.source           = { :git => 'https://github.com/ezequielbrrt/EBUITools.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'Source/**/*.swift'
  s.swift_version = '5.0'
  
  # s.resource_bundles = {
  #   'EBUITools' => ['EBUITools/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  #s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
