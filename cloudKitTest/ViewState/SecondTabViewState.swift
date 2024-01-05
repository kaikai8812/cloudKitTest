//
//  SecondTabViewState.swift
//  cloudKitTest
//
//  Created by 青山凱 on 2024/01/05.
//

import Foundation
import Foundation
import Observation

class SecondTabViewState {
    
    var store: UserStore = .shared
    
    var userText: String
    
    init() {
        userText = store.values.first?.name ?? "データなし"
    }
    
    func saveUser() {
        store.save(.init(name: "second"))
    }
}
