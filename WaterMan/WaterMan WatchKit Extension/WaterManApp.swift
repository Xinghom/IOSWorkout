//
//  WaterManApp.swift
//  WaterMan WatchKit Extension
//
//  Created by Xinghang Xu on 1/3/21.
//

import SwiftUI

@main
struct WaterManApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
