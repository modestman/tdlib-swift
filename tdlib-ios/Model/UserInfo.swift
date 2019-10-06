//
//  UserInfo.swift
//  tdlib-ios
//
//  Created by Anton Glezman on 05/10/2019.
//  Copyright © 2019 Anton Glezman. All rights reserved.
//

import Foundation
import TdlibKit

class UserInfo {

    let id: Int
    let name: String
    let username: String
    var profileImage: Data?
 
    init(id: Int, name: String, username: String, profileImage: Data? = nil) {
        self.id = id
        self.name = name
        self.username = username
        self.profileImage = profileImage
    }
}


extension UserInfo {
    
    convenience init(_ user: User) {
        self.init(
            id: user.id,
            name: "\(user.firstName) \(user.lastName)",
            username: user.username
        )
        updateImage(user.profilePhoto?.small)
    }
    
    func updateImage(_ file: File?) {
        guard
            let path = file?.local.path,
            !path.isEmpty
        else {
            profileImage = nil
            return
        }
        let url = URL(fileURLWithPath: path)
        profileImage = try? Data(contentsOf: url)
    }
    
}
