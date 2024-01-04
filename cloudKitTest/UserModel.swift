//
//  UserModel.swift
//  cloudKitTest
//
//  Created by 青山凱 on 2024/01/04.
//

import Foundation
import SwiftData

@Model
class UserModel {
    var name: String = ""
    var age: Int = 0
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
