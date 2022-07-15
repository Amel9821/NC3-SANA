//
//  NC3_SANAApp.swift
//  NC3 SANA WatchKit Extension
//
//  Created by Amalia . on 15/07/22.
//

import SwiftUI

@main
struct NC3_SANAApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
