# Uncomment the next line to define a global platform for your project
platform :ios, '12.0'

target 'SnapKitLab' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  pod 'SnapKit', '~> 5.6.0'
  pod 'SwiftGen', '~> 6.0'
  
  target 'SnapKitLabTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'SnapKitLabUITests' do
    # Pods for testing
  end

end

post_install do |installer|
  installer.pods_project.targets.each do |target|
   target.build_configurations.each do |config|
    config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '12.0'
   end
  end
 end
