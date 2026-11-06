[![Swift versions](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fmaestra-io%2Fios-sdk%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/maestra-io/ios-sdk)
[![Platforms](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fmaestra-io%2Fios-sdk%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/maestra-io/ios-sdk)

# Maestra SDK for iOS

The Maestra SDK allows developers to integrate mobile push notifications, in-app messages, and client events into your iOS projects.

## Getting Started

These instructions will help you integrate the Maestra SDK into your iOS app.

### Installation (Swift Package Manager — recommended)

Follow the installation process detailed [here](https://developers.maestra.io/docs/ios-sdk-integration). Overview:

1. In Xcode, go to **File → Add Package Dependencies...**
2. Enter the repository URL:
   ```
   https://github.com/maestra-io/ios-sdk
   ```
3. Add `Mindbox` to your main app target.
4. Add `MindboxNotificationsService` to your Notification Service Extension target.
5. Add `MindboxNotificationsContent` to your Notification Content Extension target.

### Installation (CocoaPods)

Coming soon.

### Migrating from CocoaPods to SPM

If you are currently using CocoaPods and want to switch to SPM:

1. Deintegrate CocoaPods:
   ```bash
   pod deintegrate
   rm -rf Pods Podfile Podfile.lock
   ```
   If your `.xcworkspace` was created by CocoaPods (contains only your project and `Pods.xcodeproj`), remove it as well:
   ```bash
   rm -rf YourApp.xcworkspace
   ```
2. Open your `.xcodeproj` (not `.xcworkspace`).
3. Verify no CocoaPods remnants:
   - Each target → **Build Phases** → no `[CP]` phases should remain.
   - Each target → **General** → **Frameworks, Libraries** → no `Pods_*.framework`.
   - Project → **Build Settings** → search "Pods" → no xcconfig references.
4. Add the SDK via SPM (see Installation above).
5. Build and verify all targets compile.

> **Note:** Your app data is not affected by this migration. Core Data stores are saved in the App Group container independently of the dependency manager.

### Initialization

Initialize the Maestra SDK in your AppDelegate or SceneDelegate. Refer to the documentation [here](https://developers.maestra.io/docs/ios-sdk-initialization) for more details.

### Operations

Learn how to send events to Maestra. Create a new Operation class object and set the respective parameters. Check the [documentation](https://developers.maestra.io/docs/ios-sdk-events) for more details.

### Push Notifications

Maestra SDK aids in handling push notifications. Configuration and usage instructions can be found in the SDK documentation [here](https://developers.maestra.io/docs/ios-send-push-notifications-appdelegate) and [here](https://developers.maestra.io/docs/setting-up-rich-push-notifications).

## Troubleshooting

An [Example of integration](https://github.com/maestra-io/ios-sdk/tree/main/Example) is provided in case of any issues.

## Further Help

In need of further assistance? Feel free to contact us.

For a better understanding of these content, we suggest reading the referenced [iOS SDK](https://developers.maestra.io/docs/ios-sdk-integration) documentation.
