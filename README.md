# WorkoutSDK

[![CI Status](https://img.shields.io/travis/Miguel/VitaleSDK.svg?style=flat)](https://travis-ci.org/Miguel/VitaleSDK)
[![Version](https://img.shields.io/cocoapods/v/VitaleSDK.svg?style=flat)](https://cocoapods.org/pods/VitaleSDK)
[![License](https://img.shields.io/cocoapods/l/VitaleSDK.svg?style=flat)](https://cocoapods.org/pods/VitaleSDK)
[![Platform](https://img.shields.io/cocoapods/p/VitaleSDK.svg?style=flat)](https://cocoapods.org/pods/VitaleSDK)

## Description
WorkoutSDK is a comprehensive intelligent, automatic, and adaptive training framework programmed in
Swift for iOS and iPadOS. Is the most convenient way of integrating our physical activity training features
with any third party.

## Installation

WorkoutSDK is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'WorkoutSDK', :git => 'https://github.com/miguelmunozfer/Workout'
```

Add the following lines to the end of the podfile file

```ruby
post_install do |installer|
installer.pods_project.targets.each do |target|
target.build_configurations.each do |config|
config.build_settings['BUILD_LIBRARY_FOR_DISTRIBUTION'] = 'YES'
end
end
end
```

## Usage

### Simple 1-line setup

Use your MyVitale credentials for initiating SDK. Your user_id must be permanent and unique for each App user (any user id, including the ones you are already using in your system,  can be used).

```swift
WorkoutSDK.sharedInstance.start(with: "USER_ID", appID: "APP_ID", password: "PASSWORD")

```


## Author

MyVitale, info@myvitale.com

## License

VitaleSDK is available under the MIT license. See the LICENSE file for more info.
