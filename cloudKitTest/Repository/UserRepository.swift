//
//  UserRepository.swift
//  cloudKitTest
//
//  Created by 青山凱 on 2024/01/05.
//

import Foundation
import SwiftData

class UserRepository {
    
    static let shared: UserStore = .init()
    
    private var context: ModelContext
    
    init() {
        let sheme = Schema([UserModel.self])
        let modelConfiguration = ModelConfiguration(schema: sheme)
        let modelContainer = try! ModelContainer(
            for: UserModel.self,
            configurations: modelConfiguration
        )
        context = ModelContext(modelContainer)
    }
    
    func fetch() throws -> [UserModel] {
        let fetchDescriber = FetchDescriptor<UserModel>()
        return try context.fetch(fetchDescriber)
    }
    
    func save(_ user: UserModel) throws {
        context.insert(user)
        do {
            try context.save()
        } catch {
            throw error
        }
    }
    
}
