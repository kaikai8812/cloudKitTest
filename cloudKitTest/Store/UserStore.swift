//
//  UserStore.swift
//  cloudKitTest
//
//  Created by 青山凱 on 2024/01/05.
//

import Foundation
import SwiftData
import Observation

@Observable
class UserStore {
    
    static let shared: UserStore = .init()
    
    private(set) var values: [UserModel] = []
    
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
    
    func loadValue() {
        let fetchDescriber = FetchDescriptor<UserModel>()
        values = try! context.fetch(fetchDescriber)
    }
    
    // こうしちゃうと、またloadValueをしないと、storeの値に状態が反映されないので、そこを自動的に更新されるようにしたいが、どうすればいいか...?
    func save(_ userModel: UserModel) {
        context.insert(userModel)
        try! context.save()
        loadValue() //  これ、もっとスマートに記述したい感がある、、、UserRepositoryを作成すれば、もうちょっと見通しがよくできるか？
    }
}
