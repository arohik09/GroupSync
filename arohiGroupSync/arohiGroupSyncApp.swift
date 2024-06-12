//
//  arohiGroupSyncApp.swift
//  arohiGroupSync
//
//  Created by Scholar on 6/11/24.
//

import SwiftUI
import SwiftData
@main
struct arohiGroupSyncApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Group.self)
        }
    }
}
