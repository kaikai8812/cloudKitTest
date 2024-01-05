//
//  FirstTabViewState.swift
//  cloudKitTest
//
//  Created by 青山凱 on 2024/01/05.
//

import Foundation
import Observation

@Observable
class FirstTabViewState {
    
    private var store: UserStore
    
    var firstUserText: String {
        store.values.last?.name ?? ""
    }
    
    var users: [UserModel] {
        store.loadValue()
        return store.values
    }
    
    
    init() {
        store = .shared
    }
    
    func saveUser() {
        store.save(.init(name: "first"))
    }
}
