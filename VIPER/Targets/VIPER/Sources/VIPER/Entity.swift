//
//  Entity.swift
//  VIPER
//
//  Created by 고대원 on 2024/01/05.
//  Copyright © 2024 tuist.io. All rights reserved.
//

import Foundation

struct User: Codable {
    let name: String
}

extension User {
    static func getMock() -> [User] {
        return [
            User(name: "a"),
            User(name: "ab"),
            User(name: "abc"),
            User(name: "abcd")
        ]
    }
}
