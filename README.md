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
### CocoaPods
To integrate `WorkoutSDK` into your Xcode project using CocoaPods, specify it in your `Podfile`:
```ruby
pod 'WorkoutSDK', :git => 'https://github.com/miguelmunozfer/Workout'
```
Then, run the following command:
```bash
$ pod install
```

Add the following lines to the end of the podfile file

```ruby
post_install do |installer|
installer.pods_project.targets.each do |target|
target.build_configurations.each do |config|
config.build_settings['BUILD_LIBRARY_FOR_DISTRIBUTION'] = 'YES'
config.build_settings['ONLY_ACTIVE_ARCH'] = 'NO'
if target.name.start_with? "GoogleDataTransport"
  target.build_configurations.each do |config|
          config.build_settings['CLANG_WARN_STRICT_PROTOTYPES'] = 'NO'
        end
      end
installer.generated_projects.each do |project|
  project.targets.each do |target|
          target.build_configurations.each do |config|
              config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '12.0'
              config.build_settings['OTHER_SWIFT_FLAGS'] = '-no-verify-emitted-module-interface'
              end
          end
  end
end
end
end
```

## Usage
Import `WorkoutSDK` in your application and start using its features.

### Initialization
Initialize the SDK with user information and credentials:
```swift
WorkoutSDK.sharedInstance.start(with: user, clientId: clientId, clientSecret: clientSecret)
```
- `user`: String representing the user.
- `clientId`: Your client ID.
- `clientSecret`: Your client secret.

### Authentication
- `logout()`: Logs out the current user.

### UI Customization
- `setMainColor(color: String)`: Set the main color of UI elements.
  - `color`: A string representing the color.
- `setPrimaryButtonColor(_ color: String)`: Set the primary button color.
  - `color`: Color for the buttons.
- `setNavigationBarColor(color: String)`: Set the navigation bar color.
  - `color`: Navigation bar color.
- `setNavigationTintColor(color: String)`: Set the navigation tint color.
  - `color`: Tint color.

### User Profile
- `isProfileFilled() -> Bool`: Check if the user's profile is complete.
- `updateProfile(...)`: Update user's profile information with various personal details.
- `getProfile() -> PublicProfile?`: Retrieve the user's public profile.

### Workout Plans
- `showWorkoutPlan()`: Display the workout plan.

## Support
For further information and support, contact [https://www.myvitale.com].

## Author

MyVitale, info@myvitale.com

## License

VitaleSDK is available under the MIT license. See the LICENSE file for more info.
