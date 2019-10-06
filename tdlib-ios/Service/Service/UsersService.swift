//
//  UsersService.swift
//  tdlib-ios
//
//  Created by Anton Glezman on 05/10/2019.
//  Copyright © 2019 Anton Glezman. All rights reserved.
//

import Foundation
import TdlibKit


protocol UsersServiceDelegate: class {
}


final class UsersService: UpdateListener {
    
    // MARK: - Private properties
    
    private let api: TdApi
    
    
    // MARK: - Public properties
    
    private(set) var users: [Int: UserInfo] = [:]
    weak var delegate: UsersServiceDelegate?
    
    
    // MARK: - Init
    
    init(tdApi: TdApi) {
        self.api = tdApi
    }
    
    func onUpdate(_ update: Update) {
        switch update {
        case .updateUser(let upd):
            users[upd.user.id] = UserInfo(upd.user)
            loadProfilePhoto(upd.user)
        default:
            break
        }
    }
 
    
    // MARK: - Public methods
    
    func obtainUser(_ id: Int, completion: @escaping (UserInfo?) -> Void) {
        guard id != 0 else {
            completion(nil)
            return
        }
        try? api.getUser(userId: id, completion: { [weak self] result in
            guard
                let self = self,
                let user = try? result.get()
            else { return }
            self.users[id] = UserInfo(user)
            self.loadProfilePhoto(user)
            completion(self.users[id])
        })
    }
    
    func loadProfilePhoto(_ user: User) {
        guard
            let photo = user.profilePhoto,
            !photo.small.local.isDownloadingCompleted,
            photo.small.local.path.isEmpty
        else {
            if let userInfo = self.users[user.id] {
                userInfo.updateImage(user.profilePhoto?.small)
            }
            return
        }
        
        let userId = user.id
        try? api.downloadFile(
            fileId: photo.small.id,
            limit: 0,
            offset: 0,
            priority: 10,
            synchronous: true,
            completion: { [weak self] result in
                guard
                    let self = self,
                    let file = try? result.get(),
                    let user = self.users[userId]
                else { return }
                user.updateImage(file)
            }
        )
    }
    
}
