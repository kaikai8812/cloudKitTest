//
//  cloudKitTestApp.swift
//  cloudKitTest
//
//  Created by 青山凱 on 2024/01/03.
//

import SwiftUI
import SwiftData

@main
struct cloudKitTestApp: App {
//    var sharedModelContainer: ModelContainer = {
//        let schema = Schema([
//            Item.self,
//        ])
//        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)
//
//        do {
//            return try ModelContainer(for: schema, configurations: [modelConfiguration])
//        } catch {
//            fatalError("Could not create ModelContainer: \(error)")
//        }
//    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: UserModel.self)
        }
    }
}
