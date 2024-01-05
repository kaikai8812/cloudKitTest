//
//  FirstTabView.swift
//  cloudKitTest
//
//  Created by 青山凱 on 2024/01/05.
//

import SwiftUI
import SwiftData

struct FirstTabView: View {
    
    @State var state: FirstTabViewState
    
    var body: some View {
        VStack {
            Text("FirstTabView")
                .font(.title)
                .padding()
            
            List(state.users) { user in
                Text(user.name)
            }
            
            Button("データ追加") {
                state.saveUser()
            }
        }
    }
}

#Preview {
    FirstTabView(state: .init())
}
