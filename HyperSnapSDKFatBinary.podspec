Pod::Spec.new do |s|

  s.name         = "HyperSnapSDKFatBinary"
  s.version      = "2.6.11"
  s.static_framework = true
  s.summary      = "HyperVerge's iOS Framework for capturing documents and faces to be used with our AI Engines"
  s.description  = "HyperSnapSDK is HyperVerge’s documents + face capture framework that captures images at a resolution appropriate for our proprietary Deep Learning OCR and Face Recognition Engines.The framework provides a liveness feature that uses our advanced AI Engines to tell if a captured image is that of a real person or a photograph."
  s.homepage     = "https://github.com/hyperverge/HyperSnap-iOS-Fat-Binary"
  s.author       = "HyperVerge"
  s.platform     = :ios
  s.ios.deployment_target = "9.0"
  s.license          = { :type => 'Custom', :file => 'LICENSE' }
  s.source       = { :git => "https://github.com/hyperverge/HyperSnap-iOS-Fat-Binary.git", :tag => "#{s.version}"}
  s.source_files = 'HyperSnapSDK.framework/Headers/*.h'
  s.public_header_files = "HyperSnapSDK.framework/Headers/*.h"
  s.ios.vendored_frameworks = "HyperSnapSDK.framework"
  s.ios.resource = 'HVResources.bundle'
  s.swift_version = '5.0'
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  s.test_spec 'Tests' do |test_spec|
    test_spec.dependency 'Result', '~> 5.0'
  end


end
