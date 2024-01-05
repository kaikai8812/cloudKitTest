//
//  FirstTabView.swift
//  cloudKitTest
//
//  Created by 青山凱 on 2024/01/05.
//

import SwiftUI
import SwiftData

struct FirstTabView: View {
    
    let store: UserStore = .shared
    
    var body: some View {
        VStack {
            Text("FirstTabView")
                .font(.title)
                .padding()
            Text(store.values.first?.name ?? "データなし")
            
            Button("データ追加") {
                store.save(.init(name: "test"))
            }
        }
    }
}

#Preview {
    FirstTabView()
}
