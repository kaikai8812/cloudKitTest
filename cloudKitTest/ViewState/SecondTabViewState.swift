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
    
    private var store: UserStore
    
    var userText: String {
        store.values.first?.name ?? "中身なし"
    }
    
    init() {
        store = .shared
    }
    
    func saveUser() {
        do {
         try store.save(.init(name: "second"))
        } catch {
            print("🌝：\(error)")
        }
    }
}
