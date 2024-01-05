//
//  SecondTabView.swift
//  cloudKitTest
//
//  Created by 青山凱 on 2024/01/05.
//

import SwiftUI

struct SecondTabView: View {
    
//    let store: UserStore = .shared
    var state: SecondTabViewState = .init()
    
    var body: some View {
        VStack {
            Text("SecondTabView")
                .font(.title)
                .padding()
            Text(state.userText)
            
            Button("データ追加") {
                state.saveUser()
            }
        }
    }
}

#Preview {
    SecondTabView()
}
