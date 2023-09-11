//
//  CrashlyticsDemoApp.swift
//  CrashlyticsDemo
//
//  Created by Vu Duc Thinh on 17/07/2023.
//

import SwiftUI
import FirebaseCore
import PostHog
import Countly

@main
struct CrashlyticsDemoApp: App {
    init() {
//        let configuration = PHGPostHogConfiguration(apiKey: "phc_SrLwox99ICEoxU5WR3QEkaojb5bMR6h0C7PSntA5XDC", host: "https://app.posthog.com")
//
//        configuration.captureApplicationLifecycleEvents = true; // Record certain application events automatically!
//        configuration.recordScreenViews = true; // Record screen views automatically!
//
//        PHGPostHog.setup(with: configuration)
//        let posthog = PHGPostHog.shared()
//        if let posthog = PHGPostHog.shared() {
//            posthog.capture("Test Event")
//        }
//        FirebaseApp.configure()
       
        let config: CountlyConfig = CountlyConfig()
            config.appKey = "a693a3ae5ffdddf627fcbb2589658ccd8c1f6dcc"
            config.host = "http://10.240.177.90:8443"
        config.features = [CLYFeature.pushNotifications, CLYFeature.crashReporting, CLYFeature.autoViewTracking, CLYFeature.autoViewTracking]
            Countly.sharedInstance().start(with: config)
    }
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
