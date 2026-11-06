//
//  AppDelegate_IDFA.swift
//  Example
//
//  Created by Sergei Semko on 10/7/24.
//  Copyright © 2024 Mindbox. All rights reserved.
//

import UIKit
import Mindbox
import AppTrackingTransparency

// This is only one use case. It is necessary to adapt the approach to your specific use case.

@main
class AppDelegate_IDFA: MindboxAppDelegate {
    
    //https://developers.maestra.io/docs/ios-sdk-initialization
    override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        super.application(application, didFinishLaunchingWithOptions: launchOptions)
        
        if ATTrackingManager.trackingAuthorizationStatus != .notDetermined {
            initializeMindbox()
        }
        
        // ...
        return true
    }
    
    // If you're using scenes (iOS 13.0+), UIKit will not call this method. Use `sceneDidBecomeActive(_:)` instead.
    override func applicationDidBecomeActive(_ application: UIApplication) {
        if ATTrackingManager.trackingAuthorizationStatus == .notDetermined {
            DispatchQueue.main.async {
                ATTrackingManager.requestTrackingAuthorization { status in
                    self.initializeMindbox()
                }
            }
        }
    }
    
    func initializeMindbox() {
        do {
            // Replace the endpoint with your own one before running the application
            // You should also change the application bundle ID in all targets, more details in the readme
            // You can run the application on the simulator to see In-Apps
            let mindboxSdkConfig = try MBConfiguration(
                endpoint: "YourProject.IosApp",
                domain: "api.maestra.io",
                subscribeCustomerIfCreated: true,
                shouldCreateCustomer: true
            )
            Mindbox.shared.initialization(configuration: mindboxSdkConfig)
        } catch {
            print(error.localizedDescription)
        }
    }
    
    // ...
}
