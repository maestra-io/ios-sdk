# Example app for Maestra SDK for iOS

This is an example of SDK [integration](https://developers.maestra.io/docs/ios-sdk-integration).

## Getting started

### Launching the application

The app uses SPM to integrate the Maestra SDK. Xcode will resolve and download the dependency when you open the project.

1. [Clone ios-sdk repository](https://github.com/maestra-io/ios-sdk).
2. Open `ios-sdk/Example/Example.xcodeproj`.
3. To ensure you have the latest SDK version: **File → Packages → Update to Latest Package Versions**.
4. [Configure your endpoints](https://developers.maestra.io/docs/add-ios-integration) and replace the placeholder endpoint `YourProject.IosApp` in `AppDelegate.swift` with your own.
5. Build and run.

Now you can test the in-apps configured in your account on the simulator.
To run the application on a real device and try push notifications, follow the instructions below.

### Setting up the Example application with your personal account (to run on a real device)

1. Change [team](https://developers.maestra.io/docs/ios-get-keys) and bundle identifiers and App Group name for next targets:
   - ExampleApp
   - MindboxNotificationServiceExtension
   - MindboxNotificationContentExtension
2. [Configure your endpoints](https://developers.maestra.io/docs/add-ios-integration).
3. Change domain and endpoints in the `AppDelegate.swift` to yours.

### SDK functionality testing

1. To check in-app when opening:
   - [Read this](https://help.maestra.io/mobile-app-personalization/creating-an-in-app-message).
   - Open app.
2. To check the in-app anywhere in the application:
   - [Read this](https://help.maestra.io/mobile-app-personalization/how-to-display-an-in-app-anywhere-in-the-app).
   - Replace `operationSystemName` in `showInAppWithExecuteSyncOperation` and `showInAppWithExecuteAsyncOperation` in MainViewModel.
   - Click to the button `Show in-app` opposite the selected operation.
3. To check push notifications:
   - [Read this](https://developers.maestra.io/docs/checking-your-mobile-push-notifications-for-correct-work)
   - Send a notification from your account.
4. To check rich notifications:
   - [Read this](https://developers.maestra.io/docs/checking-your-mobile-push-notifications-for-correct-work)
   - Send a notification from your account.

### Additionally
- Currently the In-App only comes once per session.
- There are comments and links in the ExampleApp code that can help you.
