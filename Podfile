#   Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'
source 'git@github.com:CocoaPods/Specs.git'
inhibit_all_warnings!
platform :ios, '7.0'

workspace 'mvvm-playground.xcworkspace'

target 'mvvm-playground' do
  # pod 'JSONModel','1.6.0'
  # Uncomment the next line if you're using Swift or would like to use dynamic frameworks
  # use_frameworks!

  # Pods for pod-demo
  # pod 'ObjectiveSugar'
  # pod 'OHHTTPStubs'
  # pod 'ReactiveCocoa', '~> 2.5.0'
  # pod 'JSONModel','1.6.0'
   # pod 'AFNetworking', '~> 3.0'
   # pod 'YTKNetwork'
   #pod 'iOS-JVWebview', :path => 'vendor/iOS-JVWebview'
   #pod 'AFNetworking', '~> 3.0'
end




target 'casterModel' do
   project 'vendor/iOS-CasterModel/casterModel.xcodeproj'
   pod 'JSONModel','1.6.0'
end


 target 'JVWebview' do
    project 'vendor/iOS-JVWebview/JVWebview.xcodeproj'
 end

target 'JVNetwork' do
    project 'vendor/iOS-JVNetwork/JVNetwork.xcodeproj'
    pod 'AFNetworking', '~> 3.0'
    pod 'ReactiveCocoa', '~> 2.5.0'
    # pod 'YTKNetwork'
    pod 'JSONModel','1.6.0'
    pod 'ObjectiveSugar'
end

target 'JVUtil' do
    project 'vendor/iOS-JVUtil/JVUtil.xcodeproj'
end

### HOOK POST
post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['ENABLE_STRICT_OBJC_MSGSEND'] = 'NO'
            config.build_settings['ENABLE_BITCODE'] = 'NO'
            config.build_settings['APPLICATION_EXTENSION_API_ONLY'] = 'NO'
        end
    end
end
