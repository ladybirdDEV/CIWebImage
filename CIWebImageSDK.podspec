#
# Be sure to run `pod lib lint CIWebImageSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CIWebImageSDK'
  s.version          = '0.1.7'
  s.summary          = 'synchronous image downloader with cache support with an UIImageView category.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

s.description = 'This library provides a category for UIImageView with support for remote '      \
'images coming from the web. It provides an UIImageView category adding web '    \
'image and cache management to the Cocoa Touch framework, an asynchronous '      \
'image downloader, an asynchronous memory + disk image caching with automatic '  \
'cache expiration handling, a guarantee that the same URL won\'t be downloaded ' \
'several times, a guarantee that bogus URLs won\'t be retried again and again, ' \
'and performances!'

  s.homepage         = 'https://github.com/ladybirdDEV/CIWebImage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'idbeny' => 'idbeny@163.com' }
  s.source           = { :git => 'https://github.com/ladybirdDEV/CIWebImage.git', :tag => s.version.to_s }
  
  s.ios.deployment_target = '13.0'
  s.pod_target_xcconfig = {
    'SUPPORTS_MACCATALYST' => 'YES',
    'DERIVE_MACCATALYST_PRODUCT_BUNDLE_IDENTIFIER' => 'NO',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
  s.vendored_frameworks = "CIWebImage/CIWebImageSDK.framework"
  
  s.dependency 'SDWebImage', '5.15.2'
  s.dependency 'SDWebImage/MapKit'

  s.frameworks = 'MapKit', 'UIKit', 'ImageIO'
end