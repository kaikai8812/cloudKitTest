//
//  UserStore.swift
//  cloudKitTest
//
//  Created by 青山凱 on 2024/01/05.
//

import SwiftData
import Observation

@Observable
class UserStore {
    
    static let shared: UserStore = .init()
    
    private(set) var values: [UserModel] = []
    
    private let repository: UserRepository = .init()

    init() {}
    
    func loadValue() throws {
        values = try repository.fetch()
    }
    
    func save(_ userModel: UserModel) throws {
        do {
            //  ここがすっごいイけてない
            try repository.save(userModel)
            try loadValue()
        } catch {
            throw error
        }
    }
}
