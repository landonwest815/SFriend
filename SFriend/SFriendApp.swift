//
//  SFriendApp.swift
//  SFriend
//
//  Created by Landon West on 1/23/24.
//

import SwiftUI
import SwiftData

@main
struct SFriendApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            UserData.self,
            SFTask.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
