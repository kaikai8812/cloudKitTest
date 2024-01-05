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
        do {
            try store.loadValue()
        } catch {
            print("🌝：\(error)")
        }
        return store.values
    }
    
    
    init() {
        store = .shared
    }
    
    func saveUser() {
        do {
            try store.save(.init(name: "first"))
        } catch {
            print("🌝：\(error)")
        }
    }
}
