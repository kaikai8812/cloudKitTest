//
//  ContentView.swift
//  cloudKitTest
//
//  Created by 青山凱 on 2024/01/03.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    var body: some View {
        TabView {
            FirstTabView(state: .init())
                .tabItem {
                    Label("FirstTabView", systemImage: "tray.and.arrow.down.fill")
                }
            SecondTabView()
                .tabItem { 
                    Label("SecondTabView", systemImage: "tray.and.arrow.up.fill")
                }
        }
    }
}

#Preview {
    ContentView()
}
