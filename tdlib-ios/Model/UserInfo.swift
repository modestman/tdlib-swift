//
//  UserInfo.swift
//  tdlib-ios
//
//  Created by Anton Glezman on 05/10/2019.
//  Copyright © 2019 Anton Glezman. All rights reserved.
//

import Foundation
import TdlibKit

struct UserInfo {
    
    let id: Int64
    let name: String
    let username: String
}


extension UserInfo {
    
    init(_ user: User) {
        id = user.id
        name = "\(user.firstName) \(user.lastName)"
        username = user.username
    }
    
}
