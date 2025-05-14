#
# Be sure to run `pod lib lint RNAppleHealthKit.podspec` to ensure this is a
# valid spec before submitting.
#
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'healthkit-sync'
  s.version          = '1.0.0'
  s.summary          = 'A React Native module for syncing, writing, and deleting Apple HealthKit data'

  s.description      = <<-DESC
HealthKit Sync is a custom Apple HealthKit integration for React Native with support for reading, writing, and deleting health data using metadata-based identifiers.
  DESC

  s.homepage         = 'https://github.com/lucasjolibois54/healthKit-sync'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Lucas Jolibois' => '' }
  s.source           = { :git => 'https://github.com/lucasjolibois54/healthKit-sync.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  s.swift_version = '4.2'

  s.source_files = 'RCTAppleHealthKit/**/*'
  s.frameworks = ['HealthKit']
  s.dependency 'React'
end
