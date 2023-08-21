//
//  ContentView.swift
//  CrashlyticsDemo
//
//  Created by Vu Duc Thinh on 17/07/2023.
//

import SwiftUI
import PostHog

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
//            Text("Hello, world!")
            Button("Crash") {
                let configuration = PHGPostHogConfiguration(apiKey: "phc_SrLwox99ICEoxU5WR3QEkaojb5bMR6h0C7PSntA5XDC", host: "https://app.posthog.com")

                configuration.captureApplicationLifecycleEvents = true; // Record certain application events automatically!
                configuration.recordScreenViews = true; // Record screen views automatically!

//                PHGPostHog.setup(with: configuration)
//                let posthog = PHGPostHog.shared()
//                if let posthog = PHGPostHog.shared() {
//                    posthog.capture("Test Event")
//                }
              fatalError("Crash was triggered")
            }
        }
        .padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
